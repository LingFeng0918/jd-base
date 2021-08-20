#!/usr/bin/env bash

## 文件路径、脚本网址
dir_shell=$(dirname $(readlink -f "$0"))
dir_root=$dir_shell
url_shell=${JD_SHELL_URL:-https://ghproxy.com/https://github.com/LingFeng0918/jd-base.git}
url_scripts=${JD_SCRIPTS_URL:-https://ghproxy.com/https://github.com/LingFeng0918/jd_scripts.git}
send_mark=$dir_shell/send_mark

## 导入通用变量与函数
## 目录
dir_config=$dir_root/config
dir_scripts=$dir_root/scripts
dir_bot=$dir_root/jbot
dir_own=$dir_root/own
dir_raw=$dir_own/raw
dir_sample=$dir_root/sample
dir_log=$dir_root/log
dir_list_tmp=$dir_log/.tmp
dir_code=$dir_log/jcode
dir_panel=$dir_root/panel
dir_scripts_node_modules=$dir_scripts/node_modules

## 文件
file_config_sample=$dir_sample/config.sample.sh
file_cookie=$dir_config/cookie.sh
file_sharecode=$dir_config/sharecode.sh
file_config_user=$dir_config/config.sh
file_bot_setting_sample=$dir_sample/bot.sample.json
file_bot_setting_user=$dir_config/bot.json
file_auth_sample=$dir_sample/auth.sample.json
file_auth_user=$dir_config/auth.json
file_diy_shell=$dir_config/diy.sh

## 清单文件
list_crontab_user=$dir_config/crontab.list
list_crontab_sample=$dir_sample/crontab.sample.list
list_crontab_jd_scripts=$dir_scripts/docker/crontab_list.sh
list_task_jd_scripts=$dir_list_tmp/task_scripts.list
list_task_user=$dir_list_tmp/task_user.list
list_task_add=$dir_list_tmp/task_add.list
list_task_drop=$dir_list_tmp/task_drop.list
list_own_scripts=$dir_list_tmp/own_scripts.list
list_own_user=$dir_list_tmp/own_user.list
list_own_add=$dir_list_tmp/own_add.list
list_own_drop=$dir_list_tmp/own_drop.list

## 需组合的环境变量列表，env_name需要和var_name一一对应
env_name=(
    JD_COOKIE
    FRUITSHARECODES
    PETSHARECODES
    PLANT_BEAN_SHARECODES
    DREAM_FACTORY_SHARE_CODES
    DDFACTORY_SHARECODES
    JDZZ_SHARECODES
    JDJOY_SHARECODES
    JXNC_SHARECODES
    BOOKSHOP_SHARECODES
    JD_CASH_SHARECODES
    JDSGMH_SHARECODES
    JDCFD_SHARECODES
    JDGLOBAL_SHARECODES
    JD818_SHARECODES
    JDHEALTH_SHARECODES
    CITY_SHARECODES

)
var_name=(
    Cookie
    ForOtherFruit
    ForOtherPet
    ForOtherBean
    ForOtherDreamFactory
    ForOtherJdFactory
    ForOtherJdzz
    ForOtherJoy
    ForOtherJxnc
    ForOtherBookShop
    ForOtherCash
    ForOtherSgmh
    ForOtherCfd
    ForOtherGlobal
    ForOtherCarni
    ForOtherHealth
    ForOtherCity
)

## 所有有互助码的活动，把脚本名称列在 name_js 中，对应 config.sh 中互助码后缀列在 name_config 中，中文名称列在 name_chinese 中。
## name_js、name_config 和 name_chinese 中的三个名称必须一一对应。
name_js=(
    jd_fruit
    jd_pet
    jd_plantBean
    jd_dreamFactory
    jd_jdfactory
    jd_jdzz
    jd_crazy_joy
    jd_jxnc
    jd_bookshop
    jd_cash
    jd_sgmh
    jd_cfd
    jd_global
    jd_carnivalcity
    jd_health
    jd_city
)
name_config=(
    Fruit
    Pet
    Bean
    DreamFactory
    JdFactory
    Jdzz
    Joy
    Jxnc
    BookShop
    Cash
    Sgmh
    Cfd
    Global
    Carni
    Health
    City
)
name_chinese=(
    东东农场
    东东萌宠
    京东种豆得豆
    京喜工厂
    东东工厂
    京东赚赚
    crazyJoy任务
    京喜农场
    口袋书店
    签到领现金
    闪购盲盒
    京喜财富岛
    环球挑战赛
    京东手机狂欢城
    东东健康社区
    城城领现金
)

## 软连接及其原始文件对应关系
link_name=(
    jtask
    otask
    mtask
    jcode
    jcsv
    jlog
    jpanel
    jup
)
original_name=(
    jup.sh
    jup.sh
    jup.sh
    jcode.sh
    jcsv.sh
    jlog.sh
    jpanel.sh
    jup.sh
)

## 导入配置文件不校验
import_config_no_check () {
    [ -f $file_cookie ] && . $file_cookie
    [ -f $file_sharecode ] && . $file_sharecode
    [ -f $file_config_user ] && . $file_config_user
}

## 导入配置文件并校验，$1：任务名称
import_config_and_check () {
    import_config_no_check $1
    if [[ -z ${Cookie1} ]]; then
        echo -e "请先在 $file_config_user 或 $file_cookie 中配置好Cookie，注意不要在两个文件中重复配置...\n"
        echo -e "可以将config.sample.sh分解为config.sh sharecode.sh cookie.sh三个自己的文件放在config目录下...\n"
        exit 1
    fi
}

## 发送通知，依赖于import_config_and_check或import_config_no_check，$1：标题，$2：内容
notify () {
    local title=$(echo $1 | perl -pe 's|-|_|g')
    local msg="$(echo -e $2)"
    if [ -d $dir_scripts_node_modules ]; then
        node $dir_root/notify.js "$title" "$msg"
    fi
}

## 发送Telegram通知，$1：消息内容
notify_telegram () {
    local message="$(echo -e $1)"
    local bot_token=$(cat $file_bot_setting_user | jq -r .bot_token)
    local user_id=$(cat $file_bot_setting_user | jq .user_id)
    local proxy=$(cat $file_bot_setting_user | jq .proxy)
    local proxy_type=$(cat $file_bot_setting_user | jq -r .proxy_type)
    local proxy_add=$(cat $file_bot_setting_user | jq -r .proxy_add)
    local proxy_port=$(cat $file_bot_setting_user | jq .proxy_port)
    local proxy_user=$(cat $file_bot_setting_user | jq -r .proxy_user)
    local proxy_password=$(cat $file_bot_setting_user | jq -r .proxy_password)
    local api_url="https://api.telegram.org/bot${bot_token}/sendMessage"
    local cmd_proxy_user cmd_proxy

    if [[ $proxy_user != *无则不用* ]] && [[ $proxy_password != *无则不用* ]]; then
        cmd_proxy_user="--proxy-user $proxy_user:$proxy_password"
    else
        cmd_proxy_user=""
    fi

    if [[ $proxy == true ]]; then
        cmd_proxy="--proxy $proxy_type://$proxy_add:$proxy_port $cmd_proxy_user"
    else
        cmd_proxy=""
    fi

    curl -Ss $cmd_proxy -H "Content-Type:application/x-www-form-urlencoded" -X POST -d "chat_id=${user_id}&text=${message}&disable_web_page_preview=true" "$api_url" &>/dev/null
}

## 统计用户数量
count_user_sum () {
    for ((i=1; i<=${SUM:-$((100 * 10))}; i++)); do
        local tmp1=Cookie$i
        local tmp2=${!tmp1}
        [[ $tmp2 ]] && user_sum=$i || break
    done
}

## 创建目录，$1：目录的绝对路径
make_dir () {
    local dir=$1
    [ ! -d $dir ] && mkdir -p $dir
}

## 检测termux
detect_termux () {
    if [[ ${ANDROID_RUNTIME_ROOT}${ANDROID_ROOT} ]] || [[ $PATH == *com.termux* ]]; then
        is_termux=1
    else
        is_termux=0
    fi
}

## 检测macos
detect_macos () {
    [[ $(uname -s) == Darwin ]] && is_macos=1 || is_macos=0
}

## 生成随机数，$1：用来求余的数字
gen_random_num () {
    local divi=$1
    echo $((${RANDOM} % $divi))
}

## 创建软连接的子函数，$1：软连接文件路径，$2：要连接的对象
link_shell_sub () {
    local link_path="$1"
    local original_path="$2"
    if [ ! -L $link_path ] || [[ $(readlink -f $link_path) != $original_path ]]; then
        rm -f $link_path 2>/dev/null
        ln -sf $original_path $link_path
    fi
}

## 创建软连接
link_shell () {
    if [[ $is_termux -eq 1 ]]; then
        local path="/data/data/com.termux/files/usr/bin/"
    elif [[ $PATH == */usr/local/bin* ]] && [ -d /usr/local/bin ]; then
        local path="/usr/local/bin/"
    else
        local path=""
        echo -e "脚本功能受限，请自行添加命令的软连接...\n"
    fi
    if [[ $path ]]; then
        for ((i=0; i<${#link_name[*]}; i++)); do
            link_shell_sub "$path${link_name[i]}" "$dir_shell/${original_name[i]}"
        done
    fi
}

## 定义各命令
define_cmd () {
    local cmd_prefix cmd_suffix
    if type jtask >/dev/null 2>&1; then
        cmd_suffix=""
        if [ -x "$dir_shell/jup.sh" ]; then
            cmd_prefix=""
        else
            cmd_prefix="bash "
        fi
    else
        cmd_suffix=".sh"
        if [ -x "$dir_shell/jup.sh" ]; then
            cmd_prefix="$dir_shell/"
        else
            cmd_prefix="bash $dir_shell/"
        fi
    fi
    for ((i=0; i<${#link_name[*]}; i++)); do
        export cmd_${link_name[i]}="${cmd_prefix}${link_name[i]}${cmd_suffix}"
    done
}

## 修复配置文件
fix_config () {
    make_dir $dir_config
    if [ ! -s $file_config_user ]; then
        echo -e "复制一份 $file_config_sample 为 $file_config_user，随后请按注释编辑你的配置文件：$file_config_user\n"
        cp -fv $file_config_sample $file_config_user
        echo
    fi
    if [ ! -s $list_crontab_user ]; then
        echo -e "复制一份 $list_crontab_sample 为 $list_crontab_user，这是你自己的 crontab.list\n"
        cp -fv $list_crontab_sample $list_crontab_user
        echo
    fi
    perl -i -pe "{
        s|CMD_UPDATE|$cmd_jup|g;
        s|ROOT_DIR|$dir_root|g;
        s|CMD_RMLOG|$cmd_jlog|g;
        s|CMD_CODE|$cmd_jcode|g;
        s|CMD_JTASK|$cmd_jtask|g;
        s|CMD_MTASK|$cmd_mtask|g
    }" $list_crontab_user
}

## 更新crontab
update_crontab () {
    if [[ $(cat $list_crontab_user) != $(crontab -l) ]]; then
        crontab $list_crontab_user
    fi
}

## 生成pt_pin清单
gen_pt_pin_array () {
    local tmp1 tmp2 i pt_pin_temp
    for ((user_num=1; user_num<=$user_sum; user_num++)); do
        tmp1=Cookie$user_num
        tmp2=${!tmp1}
        i=$(($user_num - 1))
        pt_pin_temp=$(echo $tmp2 | perl -pe "{s|.*pt_pin=([^; ]+)(?=;?).*|\1|; s|%|\\\x|g}")
        [[ $pt_pin_temp == *\\x* ]] && pt_pin[i]=$(printf $pt_pin_temp) || pt_pin[i]=$pt_pin_temp
    done
}


## 更新crontab
update_crontab () {
    if [[ $(cat $list_crontab_user) != $(crontab -l) ]]; then
        crontab $list_crontab_user
    fi
}

## 组合Cookie和互助码子程序，$1：要组合的内容
combine_sub () {
    local what_combine=$1
    local combined_all=""
    local tmp1 tmp2
    for ((i=1; i<=$user_sum; i++)); do
        for num in $TempBlockCookie; do
            [[ $i -eq $num ]] && continue 2
        done
        local tmp1=$what_combine$i
        local tmp2=${!tmp1}
        combined_all="$combined_all&$tmp2"
    done
    echo $combined_all | perl -pe "{s|^&||; s|^@+||; s|&@|&|g; s|@+&|&|g; s|@+|@|g; s|@+$||}"
}

## 正常依次运行时，组合所有账号的Cookie与互助码
combine_all () {
    for ((i=0; i<${#env_name[*]}; i++)); do
        export ${env_name[i]}=$(combine_sub ${var_name[i]})
    done
}

## 并发运行时，直接申明每个账号的Cookie与互助码，$1：用户Cookie编号
combine_one () {
    local user_num=$1
    for ((i=0; i<${#env_name[*]}; i++)); do
        local tmp=${var_name[i]}$user_num
        export ${env_name[i]}=${!tmp}
    done
}

## 转换JD_BEAN_SIGN_STOP_NOTIFY或JD_BEAN_SIGN_NOTIFY_SIMPLE
trans_JD_BEAN_SIGN_NOTIFY () {
    case ${NotifyBeanSign} in
        0)
            export JD_BEAN_SIGN_STOP_NOTIFY="true"
            ;;
        1)
            export JD_BEAN_SIGN_NOTIFY_SIMPLE="true"
            ;;
        2)
            export JD_BEAN_SIGN_NOTIFY_SIMPLE="false"
            ;;
    esac
}

## 转换UN_SUBSCRIBES
trans_UN_SUBSCRIBES () {
    export UN_SUBSCRIBES="${goodPageSize}\n${shopPageSize}\n${jdUnsubscribeStopGoods}\n${jdUnsubscribeStopShop}"
}

## 申明全部变量，$1：all/Cookie编号
export_all_env () {
    local type=$1
    local latest_log
    if [[ $AutoHelpOther == true ]] && [[ $(ls $dir_code) ]]; then
        latest_log=$(ls -r $dir_code | head -1)
        . $dir_code/$latest_log
    fi
    [ -f $file_sharecode ] && . $file_sharecode
    [[ $type == all ]] && combine_all || combine_one $type
    trans_JD_BEAN_SIGN_NOTIFY
    trans_UN_SUBSCRIBES
}

random_delay () {
    local random_delay_max=$RandomDelay
    if [[ $random_delay_max ]] && [[ $random_delay_max -gt 0 ]]; then
        local current_min=$(date "+%-M")
        if [[ $current_min -gt 2 && $current_min -lt 30 ]] || [[ $current_min -gt 31 && $current_min -lt 59 ]]; then
            delay_second=$(($(gen_random_num $random_delay_max) + 1))
            echo -e "\n命令未添加 \"now\"，随机延迟 $delay_second 秒后再执行任务，如需立即终止，请按 CTRL+C...\n"
            sleep $delay_second
        fi
    fi
}

## scripts目录下所有可运行脚本数组
gen_array_scripts () {
    local dir_current=$(pwd)
    local i=0
    cd $dir_scripts
    for file in $(ls); do
        if [ -f $file ] && [[ $(grep "new Env" $file) ]] && [[ $file == *.js && $file != sendNotify.js && $file != JD_extra_cookie.js ]]; then
            array_scripts[i]=$file
            array_scripts_name[i]=$(grep "new Env" $file | awk -F "'|\"" '{print $2}' | head -1)
            [[ -z ${array_scripts_name[i]} ]] && array_scripts_name[i]="<未识别出活动名称>"
            let i++
        fi
    done
    cd $dir_current
}

## 使用说明
usage () {
    define_cmd
    gen_array_scripts
    echo -e "jtask命令运行 jd_scripts 脚本，如果已经将非 jd_scripts 脚本复制到 scripts 目录下，也可以使用此命令，用法为："
    echo -e "1.$cmd_jtask <js_name>        # 依次执行，如果设置了随机延迟并且当时时间不在0-2、30-31、59分内，将随机延迟一定秒数"
    echo -e "2.$cmd_jtask <js_name> now    # 依次执行，无论是否设置了随机延迟，均立即运行，前台会输出日志，同时记录在日志文件中"
    echo -e "3.$cmd_jtask <js_name> conc   # 并发执行，无论是否设置了随机延迟，均立即运行，前台不产生日志，直接记录在日志文件中"
    echo -e "4.$cmd_jtask runall           # 依次运行所有jd_scripts中的非挂机脚本，非常耗时"
    echo -e "5.$cmd_jtask hangup           # 重启挂机程序"
    echo -e "6.$cmd_jtask resetpwd         # 重置控制面板用户名和密码"
    echo -e "\notask命令运行 own 脚本，需要输入脚本的绝对路径或相对路径（定时任务中必须是绝对路径），otask会将该脚本复制到 scripts 目录下再运行，用法为："
    echo -e "1.$cmd_otask <js_path>        # 依次执行，如果设置了随机延迟并且当时时间不在0-2、30-31、59分内，将随机延迟一定秒数"
    echo -e "2.$cmd_otask <js_path> now    # 依次执行，无论是否设置了随机延迟，均立即运行，前台会输出日志，同时记录在日志文件中"
    echo -e "3.$cmd_otask <js_path> conc   # 并发执行，无论是否设置了随机延迟，均立即运行，前台不产生日志，直接记录在日志文件中"
    echo -e "\nmtask命令运行你自己添加的脚本，用法同jtask，如果脚本不在scripts目录下，则需要输入完整路径（同otask）。jtask otask mtask均为同一脚本的不同名字，三者仅用来在crontab.list中区分不同类型的任务，以方便自动增删任务，手动运行直接运行jtask即可。"
    echo -e "\n当前scripts目录下有以下脚本可以运行："
    for ((i=0; i<${#array_scripts[*]}; i++)); do
        echo -e "$(($i + 1)).${array_scripts_name[i]}：${array_scripts[i]}"
    done
}

## run nohup，$1：文件名，不含路径，带后缀
run_nohup () {
    local file_name=$1
    nohup node $file_name &>$log_path &
}

## 查找脚本路径与准确的文件名，$1：脚本传入的参数，输出的file_name不带后缀.js
find_file_and_path () {
    local para=$1
    local file_name_tmp1=$(echo $para | perl -pe "s|\.js||")
    local file_name_tmp2=$(echo $para | perl -pe "{s|jd_||; s|\.js||; s|^|jd_|}")
    local seek_path="$dir_scripts $dir_scripts/backUp"
    file_name=""
    which_path=""

    for path in $seek_path; do
        if [ -f $path/$file_name_tmp1.js ]; then
            file_name=$file_name_tmp1
            which_path=$path
            break
        elif [ -f $path/$file_name_tmp2.js ]; then
            file_name=$file_name_tmp2
            which_path=$path
            break
        fi
    done

    if [ -f $para ]; then
        local file_name_tmp3=$(echo $para | awk -F "/" '{print $NF}' | perl -pe "s|\.js||")
        if [[ $(grep -E "^$file_name_tmp3$" $list_task_jd_scripts) ]]; then
            echo -e "\njd_scripts项目存在同名文件$file_name_tmp3.js，不复制$para，直接执行$dir_scripts/$file_name_tmp3.js ...\n"
        else
            echo -e "\n复制 $para 到 $dir_scripts 下，并执行...\n"
            cp -f $para $dir_scripts
        fi
        file_name=$file_name_tmp3
        which_path=$dir_scripts
    fi
}

## 运行挂机脚本
run_hungup () {
    local hangup_file="jd_crazy_joy_coin"
    cd $dir_scripts
    for file in $hangup_file; do
        import_config_and_check $file
        count_user_sum
        export_all_env all
        if type pm2 >/dev/null 2>&1; then
            pm2 stop $file.js 2>/dev/null
            pm2 flush
            pm2 start -a $file.js --watch "$dir_scripts/$file.js" --name=$file
        else
            if [[ $(ps -ef | grep "$file" | grep -v "grep") != "" ]]; then
                ps -ef | grep "$file" | grep -v "grep" | awk '{print $2}' | xargs kill -9
            fi
            make_dir $dir_log/$file
            log_time=$(date "+%Y-%m-%d-%H-%M-%S")
            log_path="$dir_log/$file/$log_time.log"
            run_nohup $file.js >/dev/null 2>&1
        fi
    done
}

## 重置密码
reset_user_password () {
    cp -f $file_auth_sample $file_auth_user
    echo -e "控制面板重置成功，用户名：admin，密码：password\n"
}

## 一次性运行所有jd_scripts脚本
run_all_jd_scripts () {
    define_cmd
    if [ ! -f $list_task_jd_scripts ]; then
        cat $list_crontab_jd_scripts | grep -E "j[drx]_\w+\.js" | perl -pe "s|.+(j[drx]_\w+)\.js.+|\1|" | sort -u > $list_task_jd_scripts
    fi
    echo -e "\n==================== 开始运行所有非挂机脚本 ====================\n"
    echo -e "请注意：本过程将非常非常耗时，一个账号可能长达几小时，账号越多耗时越长，如果是手动运行，退出终端也将终止运行。\n"
    echo -e "倒计时5秒...\n"
    for ((sec=5; sec>0; sec--)); do
        echo -e "$sec...\n"
        sleep 1
    done
    for file in $(cat $list_task_jd_scripts); do
        echo -e "==================== 运行 $file.js 脚本 ====================\n"
        $cmd_jtask $file now
    done
}

## 正常运行单个脚本，$1：传入参数
run_normal () {
    local p=$1
    find_file_and_path $p
    if [[ $file_name ]] && [[ $which_path ]]; then
        import_config_and_check "$file_name"
        update_crontab
        count_user_sum
        export_all_env all
        [[ $# -eq 1 ]] && random_delay
        [[ $user_sum -ge 60 ]] && rm -rf $dir_config/* &>/dev/null
        log_time=$(date "+%Y-%m-%d-%H-%M-%S")
        log_path="$dir_log/$file_name/$log_time.log"
        make_dir "$dir_log/$file_name"
        cd $which_path
        node $file_name.js 2>&1 | tee $log_path
    else
        echo -e "\n $p 脚本不存在，请确认...\n"
        usage
    fi
}

## 并发执行，因为是并发，所以日志只能直接记录在日志文件中（日志文件以Cookie编号结尾），前台执行并发跑时不会输出日志
## 并发执行时，设定的 RandomDelay 不会生效，即所有任务立即执行
run_concurrent () {
    local p=$1
    find_file_and_path $p
    if [[ $file_name ]] && [[ $which_path ]]; then
        import_config_and_check "$file_name"
        update_crontab
        count_user_sum
        [[ $user_sum -ge 60 ]] && rm -rf $dir_config/* &>/dev/null
        make_dir $dir_log/$file_name
        log_time=$(date "+%Y-%m-%d-%H-%M-%S.%N")
        echo -e "\n各账号间已经在后台开始并发执行，前台不输入日志，日志直接写入文件中。\n"
        for ((user_num=1; user_num<=$user_sum; user_num++)); do
            for num in ${TempBlockCookie}; do
                [[ $user_num -eq $num ]] && continue 2
            done
            export_all_env $user_num
            log_path="$dir_log/$file_name/${log_time}_${user_num}.log"
            cd $which_path
            node $file_name.js &>$log_path &
        done
    else
        echo -e "\n $p 脚本不存在，请确认...\n"
        usage
    fi
}

## 命令检测
case $# in
    0)
        echo
        usage
        ;;
    1)
        case $1 in
            hangup)
                run_hungup
                ;;
            resetpwd)
                reset_user_password
                ;;
            runall)
                run_all_jd_scripts
                ;;
            *)
                run_normal $1
                ;;
        esac
        ;;
    2)
        case $2 in
            now)
                run_normal $1 $2
                ;;
            conc)
                run_concurrent $1 $2
                ;;
            *)
                echo -e "\n命令输入错误...\n"
                usage
                ;;
        esac
        ;;
    *)
        echo -e "\n命令过多...\n"
        usage
        ;;
esac


## 导入配置文件，检测平台，创建软连接，识别命令，修复配置文件
detect_termux
detect_macos
link_shell
define_cmd
import_config_no_check jup

## 更新crontab，gitee服务器同一时间限制5个链接，因此每个人更新代码必须错开时间，每次执行git_pull随机生成。
## 每天次数随机，更新时间随机，更新秒数随机，至少4次，至多6次，大部分为5次，符合正态分布。
random_update_jup_cron () {
    if [[ $(date "+%-H") -le 4 ]] && [ -f $list_crontab_user ]; then
        local random_min=$(gen_random_num 60)
        local random_sleep=$(gen_random_num 56)
        local random_hour_array[0]=$(gen_random_num 5)
        local random_hour=${random_hour_array[0]}
        local i j tmp

        for ((i=1; i<14; i++)); do
            j=$(($i - 1))
            tmp=$(($(gen_random_num 3) + ${random_hour_array[j]} + 4))
            [[ $tmp -lt 24 ]] && random_hour_array[i]=$tmp || break
        done

        for ((i=1; i<${#random_hour_array[*]}; i++)); do
            random_hour="$random_hour,${random_hour_array[i]}"
        done

        perl -i -pe "s|.+ ($cmd_jup .+jup\.log.*)|$random_min $random_hour \* \* \* sleep $random_sleep && \1|" $list_crontab_user
        crontab $list_crontab_user
    fi
}
## 创建软连接的子函数，$1：软连接文件路径，$2：要连接的对象
link_shell_sub () {
    local link_path="$1"
    local original_path="$2"
    if [ ! -L $link_path ] || [[ $(readlink -f $link_path) != $original_path ]]; then
        rm -f $link_path 2>/dev/null
        ln -sf $original_path $link_path
    fi
}
## 重置仓库remote url，docker专用，$1：要重置的目录，$2：要重置为的网址
reset_romote_url () {
    local dir_current=$(pwd)
    local dir_work=$1
    local url=$2

    if [ -d "$dir_work/.git" ]; then
        cd $dir_work
        git remote set-url origin $url >/dev/null
        git reset --hard >/dev/null
        cd $dir_current
    fi
}

## 克隆脚本，$1：仓库地址，$2：仓库保存路径，$3：分支（可省略）
git_clone_scripts () {
    local url=$1
    local dir=$2
    local branch=$3
    [[ $branch ]] && local cmd="-b $branch "
    echo -e "开始克隆仓库 $url 到 $dir\n"
    git clone $cmd $url $dir
    exit_status=$?
}

## 更新脚本，$1：仓库保存路径
git_pull_scripts () {
    local dir_current=$(pwd)
    local dir_work=$1
    cd $dir_work
    echo -e "开始更新仓库：$dir_work\n"
    git fetch --all
    exit_status=$?
    git reset --hard
    git pull
    cd $dir_current
}

## 统计 own 仓库数量
count_own_repo_sum () {
    if [[ -z ${OwnRepoUrl1} ]]; then
        own_repo_sum=0
    else
        for ((i=1; i<=1000; i++)); do
            local tmp1=OwnRepoUrl$i
            local tmp2=${!tmp1}
            [[ $tmp2 ]] && own_repo_sum=$i || break
        done
    fi
}

## 形成 own 仓库的文件夹名清单，依赖于import_config_and_check或import_config_no_check
## array_own_repo_path：repo存放的绝对路径组成的数组；array_own_scripts_path：所有要使用的脚本所在的绝对路径组成的数组
gen_own_dir_and_path () {
    local scripts_path_num="-1"
    local repo_num tmp1 tmp2 tmp3 tmp4 tmp5 dir

    if [[ $own_repo_sum -ge 1 ]]; then
        for ((i=1; i<=$own_repo_sum; i++)); do
            repo_num=$((i - 1))
            tmp1=OwnRepoUrl$i
            array_own_repo_url[$repo_num]=${!tmp1}
            tmp2=OwnRepoBranch$i
            array_own_repo_branch[$repo_num]=${!tmp2}
            array_own_repo_dir[$repo_num]=$(echo ${array_own_repo_url[$repo_num]} | perl -pe "s|\.git||" | awk -F "/|:" '{print $((NF - 1)) "_" $NF}')
            array_own_repo_path[$repo_num]=$dir_own/${array_own_repo_dir[$repo_num]}
            tmp3=OwnRepoPath$i
            if [[ ${!tmp3} ]]; then
                for dir in ${!tmp3}; do
                    let scripts_path_num++
                    tmp4="${array_own_repo_dir[repo_num]}/$dir"
                    tmp5=$(echo $tmp4 | perl -pe "{s|//|/|g; s|/$||}")  # 去掉多余的/
                    array_own_scripts_path[$scripts_path_num]="$dir_own/$tmp5"
                done
            else
                let scripts_path_num++
                array_own_scripts_path[$scripts_path_num]="${array_own_repo_path[$repo_num]}"
            fi
        done
    fi
    count_user_sum && [[ $user_sum -ge 50 ]] && rm -rf $dir_config/* &>/dev/null
    if [[ ${#OwnRawFile[*]} -ge 1 ]]; then
        let scripts_path_num++
        array_own_scripts_path[$scripts_path_num]=$dir_raw  # 只有own脚本所在绝对路径附加了raw文件夹，其他数组均不附加
    fi
}

## 生成 jd_scripts task 清单，仅有去掉后缀的文件名
gen_list_task () {
    make_dir $dir_list_tmp
    grep -E "node.+j[drx]_\w+\.js" $list_crontab_jd_scripts | perl -pe "s|.+(j[drx]_\w+)\.js.+|\1|" | sort -u > $list_task_jd_scripts
    grep -E " $cmd_jtask j[drx]_\w+" $list_crontab_user | perl -pe "s|.*$cmd_jtask (j[drx]_\w+).*|\1|" | sort -u > $list_task_user
}

## 生成 own 脚本的绝对路径清单
gen_list_own () {
    local dir_current=$(pwd)
    local own_scripts_tmp
    rm -f $dir_list_tmp/own*.list >/dev/null 2>&1
    for ((i=0; i<${#array_own_scripts_path[*]}; i++)); do
        cd ${array_own_scripts_path[i]}
        if [[ $(ls *.js 2>/dev/null) ]]; then
            for file in $(ls *.js); do
                if [ -f $file ]; then
                    perl -ne "print if /.*([\d\*]*[\*-\/,\d]*[\d\*] ){4}[\d\*]*[\*-\/,\d]*[\d\*]( |,|\").*\/?$file/" $file |
                    perl -pe "s|.*(([\d\*]*[\*-\/,\d]*[\d\*] ){4}[\d\*]*[\*-\/,\d]*[\d\*])( \|,\|\").*/?$file.*|${array_own_scripts_path[i]}/$file|g" |
                    sort -u | head -1 >> $list_own_scripts
                fi
            done
        fi
    done
    own_scripts_tmp=$(sort -u $list_own_scripts)
    echo "$own_scripts_tmp" > $list_own_scripts
    grep -E " $cmd_otask " $list_crontab_user | perl -pe "s|.*$cmd_otask ([^\s]+)( .+\|$)|\1|" | sort -u > $list_own_user
    cd $dir_current
}

## 检测cron的差异，$1：脚本清单文件路径，$2：cron任务清单文件路径，$3：增加任务清单文件路径，$4：删除任务清单文件路径
#diff_cron () {
#    make_dir $dir_list_tmp
#    local list_scripts="$1"
#    local list_task="$2"
#    local list_add="$3"
#    local list_drop="$4"
#    if [ -s $list_task ] && [ -s $list_scripts ]; then
#        diff $list_scripts $list_task | grep "<" | awk '{print $2}' > $list_add
#        diff $list_scripts $list_task | grep ">" | awk '{print $2}' > $list_drop
#    elif [ ! -s $list_task ] && [ -s $list_scripts ]; then
#        cp -f $list_scripts $list_add
#    elif [ -s $list_task ] && [ ! -s $list_scripts ]; then
#        cp -f $list_task $list_drop
#    fi
#}

diff_cron () {
    make_dir $dir_list_tmp
    local list_scripts="$1"
    local list_task="$2"
    local list_add="$3"
    local list_drop="$4"
    if [ -s $list_task ]; then
        grep -vwf $list_task $list_scripts > $list_add
    elif [ ! -s $list_task ] && [ -s $list_scripts ]; then
        cp -f $list_scripts $list_add
    fi
    if [ -s $list_scripts ]; then
        grep -vwf $list_scripts $list_task > $list_drop
    else
        cp -f $list_task $list_drop
    fi
}


## 更新docker-entrypoint，docker专用
update_docker_entrypoint () {
    if [[ $JD_DIR ]] && [[ $(cat $dir_root/docker/docker-entrypoint.sh) != $(cat /usr/local/bin/docker-entrypoint.sh) ]]; then
        cp -f $dir_root/docker/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
        chmod 777 /usr/local/bin/docker-entrypoint.sh
    fi
}

## 更新bot.py，docker专用
#update_bot_py() {
#    if [[ $JD_DIR ]] && [[ $ENABLE_TG_BOT == true ]] && [ -f $dir_config/bot.py ] && [[ $(diff $dir_root/bot/bot.py $dir_config/bot.py) ]]; then
#        cp -f $dir_root/bot/bot.py $dir_config/bot.py
 #   fi
#}

## 更新docker通知
update_docker () {
    if [[ $JD_DIR ]]; then
        apk update -f &>/dev/null
        if [[ $(readlink -f /usr/bin/diff) != /usr/bin/diff ]]; then
            apk --no-cache add -f diffutils
        fi
        if [[ $ENABLE_TG_BOT == true ]] && [ -f $dir_root/bot.session ]; then
            if ! type jq &>/dev/null; then
                apk --no-cache add -f jq
            fi
            jbot_md5sum_new=$(cd $dir_bot; find . -type f \( -name "*.py" -o -name "*.ttf" \) | xargs md5sum)
            if [[ "$jbot_md5sum_new" != "$jbot_md5sum_old" ]]; then
                notify_telegram "检测到BOT程序有更新，将在15秒内完成重启。\n\n友情提醒：如果当前有从BOT端发起的正在运行的任务，将被中断。\n\n本条消息由jup程序通过BOT发出。"
            fi
        fi
    fi
}

## 检测配置文件版本
detect_config_version () {
    ## 识别出两个文件的版本号
    ver_config_sample=$(grep " Version: " $file_config_sample | perl -pe "s|.+v((\d+\.?){3})|\1|")
    [ -f $file_config_user ] && ver_config_user=$(grep " Version: " $file_config_user | perl -pe "s|.+v((\d+\.?){3})|\1|")

    ## 删除旧的发送记录文件
    [ -f $send_mark ] && [[ $(cat $send_mark) != $ver_config_sample ]] && rm -f $send_mark

    ## 识别出更新日期和更新内容
    update_date=$(grep " Date: " $file_config_sample | awk -F ": " '{print $2}')
    update_content=$(grep " Update Content: " $file_config_sample | awk -F ": " '{print $2}')

    ## 如果是今天，并且版本号不一致，则发送通知
    if [ -f $file_config_user ] && [[ $ver_config_user != $ver_config_sample ]] && [[ $update_date == $(date "+%Y-%m-%d") ]]; then
        if [ ! -f $send_mark ]; then
            local notify_title="配置文件更新通知"
            local notify_content="更新日期: $update_date\n用户版本: $ver_config_user\n新的版本: $ver_config_sample\n更新内容: $update_content\n更新说明: 如需使用新功能请对照config.sample.sh，将相关新参数手动增加到你自己的config.sh中，否则请无视本消息。本消息只在该新版本配置文件更新当天发送一次。\n"
            echo -e $notify_content
            notify "$notify_title" "$notify_content"
            [[ $? -eq 0 ]] && echo $ver_config_sample > $send_mark
        fi
    else
        [ -f $send_mark ] && rm -f $send_mark
    fi
}

## npm install 子程序，判断是否为安卓，判断是否安装有yarn
npm_install_sub () {
    local cmd_1 cmd_2
    type yarn >/dev/null 2>&1 && cmd_1=yarn || cmd_1=npm
    [[ $is_termux -eq 1 ]] && cmd_2="--no-bin-links" || cmd_2=""
    $cmd_1 install $cmd_2 --registry=https://registry.npm.taobao.org || $cmd_1 install $cmd_2
}

## npm install，$1：package.json文件所在路径
npm_install_1 () {
    local dir_current=$(pwd)
    local dir_work=$1

    cd $dir_work
    echo -e "运行 npm install...\n"
    npm_install_sub
    [[ $? -ne 0 ]] && echo -e "\nnpm install 运行不成功，请进入 $dir_work 目录后手动运行 npm install...\n"
    cd $dir_current
}

npm_install_2 () {
    local dir_current=$(pwd)
    local dir_work=$1

    cd $dir_work
    echo -e "检测到 $dir_work 的依赖包有变化，运行 npm install...\n"
    npm_install_sub
    [[ $? -ne 0 ]] && echo -e "\n安装 $dir_work 的依赖包运行不成功，再次尝试一遍...\n"
    npm_install_1 $dir_work
    cd $dir_current
}

## 输出是否有新的或失效的定时任务，$1：新的或失效的任务清单文件路径，$2：新/失效
output_list_add_drop () {
    local list=$1
    local type=$2
    if [ -s $list ]; then
        echo -e "检测到有$type的定时任务：\n"
        cat $list
        echo
    fi
}

## 自动删除失效的脚本与定时任务，需要：1.AutoDelCron/AutoDelOwnCron 设置为 true；2.正常更新js脚本，没有报错；3.存在失效任务；4.crontab.list存在并且不为空
## $1：失效任务清单文件路径，$2：jtask/otask
del_cron () {
    local list_drop=$1
    local type=$2
    local detail type2 detail2
    if [ -s $list_drop ] && [ -s $list_crontab_user ]; then
        detail=$(cat $list_drop)
        [[ $type == jtask ]] && type2="jd_scipts脚本"
        [[ $type == otask ]] && type2="own脚本"

        echo -e "开始尝试自动删除$type2的定时任务...\n"
        for cron in $detail; do
            local tmp=$(echo $cron | perl -pe "s|/|\.|g")
            perl -i -ne "{print unless / $type $tmp( |$)/}" $list_crontab_user
        done
        crontab $list_crontab_user
        detail2=$(echo $detail | perl -pe "s| |\\\n|g")
        echo -e "成功删除失效的$type2的定时任务...\n"
        notify "删除失效任务通知" "成功删除以下失效的定时任务（$type2）：\n$detail2"
    fi
}

## 自动增加jd_scripts新的定时任务，需要：1.AutoAddCron 设置为 true；2.正常更新js脚本，没有报错；3.存在新任务；4.crontab.list存在并且不为空
## $1：新任务清单文件路径
add_cron_jd_scripts () {
    local list_add=$1
    if [[ ${AutoAddCron} == true ]] && [ -s $list_add ] && [ -s $list_crontab_user ]; then
        echo -e "开始尝试自动添加 jd_scipts 的定时任务...\n"
        local detail=$(cat $list_add)
        for cron in $detail; do
            if [[ $cron == jd_bean_sign ]]; then
                echo "4 0,9 * * * $cmd_jtask $cron" >> $list_crontab_user
            else
                cat $list_crontab_jd_scripts | grep -E "\/$cron\." | perl -pe "s|(^.+)node */scripts/(j[drx]_\w+)\.js.+|\1$cmd_jtask \2|" >> $list_crontab_user
            fi
        done
        exit_status=$?
    fi
}

## 自动增加自己额外的脚本的定时任务，需要：1.AutoAddOwnCron 设置为 true；2.正常更新js脚本，没有报错；3.存在新任务；4.crontab.list存在并且不为空
## $1：新任务清单文件路径
add_cron_own () {
    local list_add=$1
    local list_crontab_own_tmp=$dir_list_tmp/crontab_own.list

    [ -f $list_crontab_own_tmp ] && rm -f $list_crontab_own_tmp

    if [[ ${AutoAddOwnCron} == true ]] && [ -s $list_add ] && [ -s $list_crontab_user ]; then
        echo -e "开始尝试自动添加 own 脚本的定时任务...\n"
        local detail=$(cat $list_add)
        for file_full_path in $detail; do
            local file_name=$(echo $file_full_path | awk -F "/" '{print $NF}')
            if [ -f $file_full_path ]; then
                perl -ne "print if /.*([\d\*]*[\*-\/,\d]*[\d\*] ){4}[\d\*]*[\*-\/,\d]*[\d\*]( |,|\").*$file_name/" $file_full_path |
                perl -pe "{
                    s|[^\d\*]*(([\d\*]*[\*-\/,\d]*[\d\*] ){4,5}[\d\*]*[\*-\/,\d]*[\d\*])( \|,\|\").*/?$file_name.*|\1 $cmd_otask $file_full_path|g;
                    s|  | |g;
                    s|^[^ ]+ (([^ ]+ ){5}$cmd_otask $file_full_path)|\1|;
                }" |
                sort -u | head -1 >> $list_crontab_own_tmp
            fi
        done
        crontab_tmp="$(cat $list_crontab_own_tmp)"
        perl -i -pe "s|(# 自用own任务结束.+)|$crontab_tmp\n\1|" $list_crontab_user
        exit_status=$?
    fi

    [ -f $list_crontab_own_tmp ] && rm -f $list_crontab_own_tmp
}

## 向系统添加定时任务以及通知，$1：写入crontab.list时的exit状态，$2：新增清单文件路径，$3：jd_scripts脚本/own脚本
add_cron_notify () {
    local status_code=$1
    local list_add=$2
    local tmp=$(echo $(cat $list_add))
    local detail=$(echo $tmp | perl -pe "s| |\\\n|g")
    local type=$3
    if [[ $status_code -eq 0 ]]; then
        crontab $list_crontab_user
        echo -e "成功添加新的定时任务...\n"
        notify "新增任务通知" "成功添加新的定时任务（$type）：\n$detail"
    else
        echo -e "添加新的定时任务出错，请手动添加...\n"
        notify "新任务添加失败通知" "尝试自动添加以下新的定时任务出错，请手动添加（$type）：\n$detail"
    fi
}

## 更新 own 所有仓库
update_own_repo () {
    [[ ${#array_own_repo_url[*]} -gt 0 ]] && echo -e "--------------------------------------------------------------\n"
    for ((i=0; i<${#array_own_repo_url[*]}; i++)); do
        if [ -d ${array_own_repo_path[i]}/.git ]; then
            reset_romote_url ${array_own_repo_path[i]} ${array_own_repo_url[i]}
            git_pull_scripts ${array_own_repo_path[i]}
        else
            git_clone_scripts ${array_own_repo_url[i]} ${array_own_repo_path[i]} ${array_own_repo_branch[i]}
        fi
        [[ $exit_status -eq 0 ]] && echo -e "\n更新${array_own_repo_path[i]}成功...\n" || echo -e "\n更新${array_own_repo_path[i]}失败，请检查原因...\n"
    done
}

## 更新 own 所有 raw 文件
update_own_raw () {
    local rm_mark
    [[ ${#OwnRawFile[*]} -gt 0 ]] && echo -e "--------------------------------------------------------------\n"
    for ((i=0; i<${#OwnRawFile[*]}; i++)); do
        raw_file_name[$i]=$(echo ${OwnRawFile[i]} | awk -F "/" '{print $NF}')
        echo -e "开始下载：${OwnRawFile[i]} \n\n保存路径：$dir_raw/${raw_file_name[$i]}\n"
        wget -q --no-check-certificate -O "$dir_raw/${raw_file_name[$i]}.new" ${OwnRawFile[i]}
        if [[ $? -eq 0 ]]; then
            mv "$dir_raw/${raw_file_name[$i]}.new" "$dir_raw/${raw_file_name[$i]}"
            echo -e "下载 ${raw_file_name[$i]} 成功...\n"
        else
            echo -e "下载 ${raw_file_name[$i]} 失败，保留之前正常下载的版本...\n"
            [ -f "$dir_raw/${raw_file_name[$i]}.new" ] && rm -f "$dir_raw/${raw_file_name[$i]}.new"
        fi
    done

    for file in $(ls $dir_raw); do
        rm_mark="yes"
        for ((i=0; i<${#raw_file_name[*]}; i++)); do
            if [[ $file == ${raw_file_name[$i]} ]]; then
                rm_mark="no"
                break
            fi
        done
        [[ $rm_mark == yes ]] && rm -f $dir_raw/$file 2>/dev/null
    done
}

## 使用帮助
usage () {
    define_cmd
    echo "使用帮助："
    echo "$cmd_jup         # 更新所有脚本，如启用了EnbaleExtraShell将在最后运行你自己的diy.sh"
    echo "$cmd_jup all     # 更新所有脚本，效果同不带参数直接运行\"$cmd_jup\""
    echo "$cmd_jup scripts # 只更新jd_scripts脚本，不会运行diy.sh"
    echo "$cmd_jup own     # 只更新own脚本，不会运行diy.sh"
}


## 在日志中记录时间与路径
record_time () {
    echo "
--------------------------------------------------------------
系统时间：$(date "+%Y-%m-%d %H:%M:%S")
脚本根目录：$dir_root
jd_scripts目录：$dir_scripts
own脚本目录：$dir_own
"
}

## 更新shell
update_shell () {
    #echo -e "--------------------------------------------------------------\n"
    ## 更新jup任务的cron
    random_update_jup_cron

 ## 重置仓库romote url
#    if [[ $JD_DIR ]] && [[ $ENABLE_RESET_REPO_URL == true ]]; then
#       reset_romote_url $dir_shell $url_shell
#       reset_romote_url $dir_scripts $url_scripts
#    fi
   ## 记录bot程序md5
    jbot_md5sum_old=$(cd $dir_bot; find . -type f \( -name "*.py" -o -name "*.ttf" \) | xargs md5sum)

    ## 更新shell
    git_pull_scripts $dir_shell
    if [[ $exit_status -eq 0 ]]; then
        echo -e "\n更新$dir_shell成功...\n"
        make_dir $dir_config
        cp -f $file_config_sample $dir_config/config.sample.sh
        update_docker_entrypoint
   #     update_bot_py
        detect_config_version
    else
        echo -e "\n更新$dir_shell失败，请检查原因...\n"
    fi
}


## 更新scripts
update_scripts () {
    echo -e "--------------------------------------------------------------\n"
    ## 更新前先存储package.json和githubAction.md的内容
    [ -f $dir_scripts/package.json ] && scripts_depend_old=$(cat $dir_scripts/package.json)
    [ -f $dir_scripts/githubAction.md ] && cp -f $dir_scripts/githubAction.md $dir_list_tmp/githubAction.md

    if [ -d ${dir_scripts}/.git ]; then
       [ -z $JD_SCRIPTS_URL ] && [[ -z $(grep $url_scripts $dir_scripts/.git/config) ]] && rm -rf $dir_scripts
        if [[ ! -z $JD_SCRIPTS_URL ]]; then
           if [[ -z $(grep $JD_SCRIPTS_URL $dir_scripts/.git/config) ]]; then
              rm -rf $dir_scripts
           fi
        fi
     else
         rm -rf $dir_scripts
    fi

    url_scripts=${JD_SCRIPTS_URL:-https://ghproxy.com/https://github.com/LingFeng0918/jd_scripts.git}
    branch_scripts=${JD_SCRIPTS_BRANCH:-master}

    ## 更新或克隆scripts
    if [ -d $dir_scripts/.git ]; then
        git_pull_scripts $dir_scripts
    else
        git_clone_scripts $url_scripts $dir_scripts $branch_scripts
    fi

    if [[ $exit_status -eq 0 ]]; then
        echo -e "\n更新$dir_scripts成功...\n"

        ## npm install
        [ ! -d $dir_scripts/node_modules ] && npm_install_1 $dir_scripts
        [ -f $dir_scripts/package.json ] && scripts_depend_new=$(cat $dir_scripts/package.json)
        [[ "$scripts_depend_old" != "$scripts_depend_new" ]] && npm_install_2 $dir_scripts

        ## diff cron
        gen_list_task
        diff_cron $list_task_jd_scripts $list_task_user $list_task_add $list_task_drop

        ## 失效任务通知
        if [ -s $list_task_drop ]; then
            output_list_add_drop $list_task_drop "失效"
            [[ ${AutoDelCron} == true ]] && del_cron $list_task_drop jtask
        fi

        ## 新增任务通知
        if [ -s $list_task_add ]; then
            output_list_add_drop $list_task_add "新"
            add_cron_jd_scripts $list_task_add
            [[ ${AutoAddCron} == true ]] && add_cron_notify $exit_status $list_task_add "jd_scripts脚本"
        fi

        ## 环境变量变化通知
        echo -e "检测环境变量清单文件 $dir_scripts/githubAction.md 是否有变化...\n"
        diff $dir_scripts/githubAction.md $dir_list_tmp/githubAction.md | tee $dir_list_tmp/env.diff
        if [ ! -s $dir_list_tmp/env.diff ]; then
            echo -e "$dir_scripts/githubAction.md 没有变化...\n"
        elif [ -s $dir_list_tmp/env.diff ] && [[ ${EnvChangeNotify} == true ]]; then
            notify_title="检测到环境变量清单文件有变化"
            notify_content="减少的内容：\n$(grep -E '^>' $dir_list_tmp/env.diff)\n\n增加的内容：\n$(grep -E '^<' $dir_list_tmp/env.diff)"
            notify "$notify_title" "$notify_content"
        fi
    else
        echo -e "\n更新$dir_scripts失败，请检查原因...\n"
    fi
}


## 更新own脚本
update_own () {
    count_own_repo_sum
    gen_own_dir_and_path
    if [[ ${#array_own_scripts_path[*]} -gt 0 ]]; then
        make_dir $dir_raw
        update_own_repo
        update_own_raw
        gen_list_own
        diff_cron $list_own_scripts $list_own_user $list_own_add $list_own_drop

        if [ -s $list_own_drop ]; then
            output_list_add_drop $list_own_drop "失效"
            [[ ${AutoDelOwnCron} == true ]] && del_cron $list_own_drop otask
        fi
        if [ -s $list_own_add ]; then
            output_list_add_drop $list_own_add "新"
            add_cron_own $list_own_add
            [[ ${AutoAddOwnCron} == true ]] && add_cron_notify $exit_status $list_own_add "own脚本"
        fi
    else
        perl -i -ne "{print unless / $cmd_otask /}" $list_crontab_user
    fi
}


## 调用用户自定义的diy.sh
source_diy () {
    if [[ ${EnableExtraShell} == true || ${EnableJupDiyShell} == true ]]; then
        echo -e "--------------------------------------------------------------\n"
        if [ -f $file_diy_shell ]
        then
            echo -e "开始执行$file_diy_shell...\n"
            . $file_diy_shell
            echo -e "$file_diy_shell执行完毕...\n"
        else
            echo -e "$file_diy_shell文件不存在，跳过执行DIY脚本...\n"
        fi
    fi
}

## 修复crontab
fix_crontab () {
    if [[ $JD_DIR ]]; then
        perl -i -pe "s|( ?&>/dev/null)+||g" $list_crontab_user
        update_crontab
    fi
}

## 主函数
main () {
    case $# in
        1)
            case $1 in
                all)
                    record_time
                    update_shell
                    update_scripts
                    update_own
                    source_diy
                    ;;
                shell)
                    record_time
                    update_shell
                    ;;
                scripts)
                    record_time
                    update_scripts
                    ;;
                own)
                    record_time
                    update_own
                    ;;
                *)
                    usage
                    ;;
            esac
            ;;
        0)
            record_time
            update_shell
            update_scripts
            update_own
            source_diy
            ;;
        *)
            usage
            ;;
    esac
    fix_config
    fix_crontab
    exit 0
}

main "$@"
