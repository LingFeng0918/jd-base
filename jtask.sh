#!/usr/bin/env bash

## 路径
dir_shell=$(dirname $(readlink -f "$0"))
dir_root=$dir_shell

## 导入通用变量与函数
##. $dir_shell/jshare.sh
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
    jtask.sh
    jtask.sh
    jtask.sh
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
        if [ -x "$dir_shell/jtask.sh" ]; then
            cmd_prefix=""
        else
            cmd_prefix="bash "
        fi
    else
        cmd_suffix=".sh"
        if [ -x "$dir_shell/jtask.sh" ]; then
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
