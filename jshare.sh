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
dir_scripts_node_modules=$dir_scripts/node_modules

## 文件
file_config_sample=$dir_sample/config.sample.sh
file_cookie=$dir_config/cookie.sh
file_sharecode=$dir_config/sharecode.sh
file_config_user=$dir_config/config.sh
file_bot_setting_sample=$dir_sample/bot.sample.json
file_bot_setting_user=$dir_config/bot.json
file_diy_shell=$dir_config/diy.sh
file_task_finish_shell=$dir_config/task_finish.sh

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
    JDHEALTH_SHARECODES
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
    ForOtherHealth
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
    jd_health
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
    Health
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
    东东健康社区
)

## 软连接及其原始文件对应关系
link_name=(
    jtask
    otask
    mtask
    jcode
    jcsv
    jlog
    jup
)
original_name=(
    jtask.sh
    jtask.sh
    jtask.sh
    jcode.sh
    jcsv.sh
    jlog.sh
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
    for ((i=1; i<=${SUM:-$((3 * 4))}; i++)); do
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