#!/usr/bin/env bash

## 路径
ShellDir=${JD_DIR:-$(cd $(dirname $0); pwd)}
[ ${JD_DIR} ] && HelpJd=jd || HelpJd=jd.sh
ScriptsDir=${ShellDir}/scripts
ConfigDir=${ShellDir}/config
FileConf=${ConfigDir}/config.sh
FileConfSample=${ShellDir}/sample/config.sh.sample
LogDir=${ShellDir}/log
ListScripts=($(cd ${ScriptsDir}; ls *.js | grep -E "j[drx]_"))
ListCron=${ConfigDir}/crontab.list

## 导入config.sh
function Import_Conf {
  if [ -f ${FileConf} ]
  then
    . ${FileConf}
    if [ -z "${Cookie1}" ]; then
      echo -e "请先在config.sh中配置好Cookie...\n"
      exit 1
    fi
  else
    echo -e "配置文件 ${FileConf} 不存在，请先按教程配置好该文件...\n"
    exit 1
  fi
}

## 更新crontab
function Detect_Cron {
  if [[ $(cat ${ListCron}) != $(crontab -l) ]]; then
    crontab ${ListCron}
  fi
}

## 用户数量UserSum
function Count_UserSum {
  for ((i=1; i<=1000; i++)); do
    Tmp=Cookie$i
    CookieTmp=${!Tmp}
    [[ ${CookieTmp} ]] && UserSum=$i || break
  done
}

## 组合Cookie和互助码子程序
function Combin_Sub {
  CombinAll=""
  if [[ ${AutoHelpOther} == true ]] && [[ $1 == ForOther* ]]; then

    ForOtherAll=""
    MyName=$(echo $1 | perl -pe "s|ForOther|My|")

    for ((m=1; m<=${UserSum}; m++)); do
      TmpA=${MyName}$m
      TmpB=${!TmpA}
      ForOtherAll="${ForOtherAll}@${TmpB}"
    done
    
    for ((n=1; n<=${UserSum}; n++)); do
      for num in ${TempBlockCookie}; do
        [[ $n -eq $num ]] && continue 2
      done
      CombinAll="${CombinAll}&${ForOtherAll}"
    done

  else
    for ((i=1; i<=${UserSum}; i++)); do
      for num in ${TempBlockCookie}; do
        [[ $i -eq $num ]] && continue 2
      done
      Tmp1=$1$i
      Tmp2=${!Tmp1}
      CombinAll="${CombinAll}&${Tmp2}"
    done
  fi

  echo ${CombinAll} | perl -pe "{s|^&||; s|^@+||; s|&@|&|g; s|@+&|&|g; s|@+|@|g; s|@+$||}"
}

## 组合Cookie、Token与互助码
function Combin_All {
 export JD_COOKIE=$(combine_sub Cookie)
    ## 东东农场(jd_fruit.js)
    export FRUITSHARECODES=$(combine_sub ForOtherFruit "1b0f3cb476b54ec8b8bd66b129512abc@de88af611604440ab2d8a055feec54ff@d857ad0b7588407bbbf56288881acde9@ffbffeb43f2144e3b1aec62a35ae08cc@0b843019b43e4966b75461c03f44eb49@07ec96ec60a541acafdf092593ea19cc@e5d4eb5371244faca945769bc359ca3c@8cdb78f4f6514bdea7b05910b1616f54@f69e584df3944b0db2faf608dffefeff@f5d2fde2662b4ee9bf5e31cb4af9193a@76ea53cfdad240bf8f9c0546d8d5cbbe")
    ## 东东萌宠(jd_pet.js)
    export PETSHARECODES=$(combine_sub ForOtherPet "MTE1NDQ5OTIwMDAwMDAwNDI2MzQ5MDk=@MTE1NDQ5OTIwMDAwMDAwNDM3ODgwODM=@MTE1NDUwMTI0MDAwMDAwMDQzODM4NDYx@MTEzMzI0OTE0NTAwMDAwMDA0NDA4OTIyMw==@MTE1NDAxNzgwMDAwMDAwNDQwODQ3NTU=@MTE1NDUwMTI0MDAwMDAwMDQ0MDg5MjEz@MTE0MzE5NjEzMDAwMDAwMDQ3NTI4MzM3@MTE1NDUyMjEwMDAwMDAwNDM4MzA0NTc=@MTEzMzI0OTE0NTAwMDAwMDA0NjUyNjk1NQ==")
    ## 种豆得豆(jd_plantBean.js)
    export PLANT_BEAN_SHARECODES=$(combine_sub ForOtherBean "ol55gydvsstx2hkr3hesg6myme3h7wlwy7o5jii@b62d7ft67awrlb7lmoiebogkmm5ac3f4ijdgqji@gpcab26gdmln2sdttihahyksrm5ac3f4ijdgqji@mlrdw3aw26j3wep3hiamrtbhyeys7z47eoiyxry@olmijoxgmjutyhl2hu4xuocdohs5j4tkqubnbwi@mlrdw3aw26j3wjgfoohoiog7ctvnwe4cstjdfoa@2i2vuvkxzo73t5v3l57kenqhei3h7wlwy7o5jii@mlrdw3aw26j3wp6oxm7bdn6xwbthqrrvqou4pqi@dr6hgbtcttwzxnrgus5oicvzjfwiomisumhwgri@u5lnx42k5ifivkzkxzubxyexqnktdmr6dcv7ruq")
    ## 东东工厂(jd_jdfactory.js)
    export DDFACTORY_SHARECODES=$(combine_sub ForOtherJdFactory "T018v_VxQxkZ_FXVJBqb1ACjVWnYaS5kRrbA@T016_qE2BEEH8FbWKHWpCjVWnYaS5kRrbA@T0225KkcRR5P9waCJBzzkPRcJwCjVWnYaS5kRrbA@T0225KkcRhYZpl3eJhn0naFYIgCjVWnYaS5kRrbA@T0225KkcRU1N9FGEJEj0nPcNJwCjVWnYaS5kRrbA@T018v_hzSBwQ_FbVJxmb1ACjVWnYaS5kRrbA@T0225KkcRRodpgWEcx2mlfNfIgCjVWnYaS5kRrbA@T022vfxwQx0a9VPePRPxkPENfQCjVWnYaS5kRrbA@T0205KkcJHpKnAKQZVCAxqlSCjVWnYaS5kRrbA")
    ## 京喜工厂(jd_dreamFactory.js)
    export DREAM_FACTORY_SHARE_CODES=$(combine_sub ForOtherDreamFactory "r0vlkIcazyr_j4tKliy19A==@wWbZsNfTVt09jdDpZmh3xQ==@hO_klEoUfXSSMcsInD5Mdg==@Jfdz8gudKSreL01NTEu6Sw==@Wtn7e7BPhMjR_NwH8-3oJQ==@rZUIJijkD5aub05jsk-slQ==@2qaF6DTnWvYpnoTOiveSRQ==")
    ## 京东赚赚(jd_jdzz.js)
    export JDZZ_SHARECODES=$(combine_sub ForOtherJdzz)
    ## 疯狂的Joy(jd_crazy_joy.js)
    export JDJOY_SHARECODES=$(combine_sub ForOtherJoy)
    ## 口袋书店(jd_bookshop.js)
    export BOOKSHOP_SHARECODES=$(combine_sub ForOtherBookShop "fa78fcdbb17943e599d1abf91357d876@4da8e5c4a9a94abfacfeb6698faa38cd")
    ## 签到领现金(jd_cash.js)
    export JD_CASH_SHARECODES=$(combine_sub ForOtherCash)
    ## 京喜农场(jd_jxnc.js)
    export JXNC_SHARECODES=$(combine_sub ForOtherJxnc)
    ## 闪购盲盒(jd_sgmh.js)
    export JDSGMH_SHARECODES=$(combine_sub ForOtherSgmh "T016_qE2BEEH8FbWKHWpCjVWmIaW5kRrbA@T0167fx2Rh0Q_FzSIBn1CjVWmIaW5kRrbA@T0225KkcRR5P9waCJBzzkPRcJwCjVWmIaW5kRrbA@0225KkcRhYZpl3eJhn0naFYIgCjVWmIaW5kRrbA@T0225KkcRU1N9FGEJEj0nPcNJwCjVWmIaW5kRrbA@T018v_hzSBwQ_FbVJxmb1ACjVWmIaW5kRrbA@T0205KkcHnpkiSKmeGmqzZdMCjVQmoaT5kRrbA@T018v_51SB8f9FzQJxOb1ACjVQmoaT5kRrbA@T0205KkcJHpKnAKQZVCAxqlSCjVQmoaT5kRrbA")
    ## 京喜财富岛(jd_cfd.js)
    export JDCFD_SHARECODES=$(combine_sub ForOtherCfd "2958A00A747C0FA0E57D547A5506E4948C167C3902F2C804D0E878DF3F86CC49@BABDC3F93EC5D5AF72414039E5DCA6F8C431A57043D21FACC8001C89984F29B2@FA6BEB0ABCE5DAECDD342EAEB3586E5BCBE7A98CC6709CF4057211FDFA610060@BFDC50E3F3B4A34F2E705A758E862C9EB6474DEEC7EC1F1B95192ADAFE7B8DE8@A44D1494A608A04E8508002B55614323468439BBC06307F39AEED4142E348714@44D73C955ED3D4DDABB81F78E4F12A84899B8516EE5643AFD1DA1B3C19777C90@8AC418C3D2FEDE556ACA7B3DEA521CCD7D3DF7DE034EC4E0D7CFFA48D597E424@5426614D6E46D889082C27219B1A0786969D826B8DDDD7192D197C6328FD4CCF@F246F9163ADB8B1063371D294E78DEBBA125DE962A68676FAF6D53F181E3845F@EC5EDEB580A045BFE08257FF4BF3E245ADB3E7737D4BD09722D59C90DB4CA7A0@D581C63D5041BD6E4329DBEEDC60CA153566BC76B004FFBE32E6C61EBBCB1243")
    ## 环球挑战赛(jd_global.js)
    export JDGLOBAL_SHARECODES=$(combine_sub ForOtherGlobal)
    ## 京东手机狂欢城(jd_carnivalcity.js)
    export JD818_SHARECODES=$(combine_sub ForOtherCarnivalcity)

    export JDHEALTH_SHARECODES=$(combine_sub ForOtherHealth "T018v_VxQxkZ_FXVJBqb1ACjVfnoaW5kRrbA@T016_qE2BEEH8FbWKHWpCjVfnoaW5kRrbA@T0225KkcRR5P9waCJBzzkPRcJwCjVfnoaW5kRrbA@T018v_hzSBwQ_FbVJxmb1ACjVfnoaW5kRrbA@T0225KkcRhYZpl3eJhn0naFYIgCjVfnoaW5kRrbA@T0205KkcJHpKnAKQZVCAxqlSCjVfnoaW5kRrbA@T011aHX7lrC-vAgCjVfnoaW5kRrbA@T0225KkcRRodpgWEcx2mlfNfIgCjVfnoaW5kRrbA@T022vfxwQx0a9VPePRPxkPENfQCjVfnoaW5kRrbA@T0167fx2Rh0Q_FzSIBn1CjVfnoaW5kRrbA")
}

## 转换JD_BEAN_SIGN_STOP_NOTIFY或JD_BEAN_SIGN_NOTIFY_SIMPLE
function Trans_JD_BEAN_SIGN_NOTIFY {
  case ${NotifyBeanSign} in
    0)
      export JD_BEAN_SIGN_STOP_NOTIFY="true"
      ;;
    1)
      export JD_BEAN_SIGN_NOTIFY_SIMPLE="true"
      ;;
  esac
}

## 转换UN_SUBSCRIBES
function Trans_UN_SUBSCRIBES {
  export UN_SUBSCRIBES="${goodPageSize}\n${shopPageSize}\n${jdUnsubscribeStopGoods}\n${jdUnsubscribeStopShop}"
}

## 申明全部变量
function Set_Env {
  Count_UserSum
  Combin_All
  Trans_JD_BEAN_SIGN_NOTIFY
  Trans_UN_SUBSCRIBES
}

## 随机延迟
function Random_Delay {
  if [[ -n ${RandomDelay} ]] && [[ ${RandomDelay} -gt 0 ]]; then
    CurMin=$(date "+%-M")
    if [[ ${CurMin} -gt 2 && ${CurMin} -lt 30 ]] || [[ ${CurMin} -gt 31 && ${CurMin} -lt 59 ]]; then
      CurDelay=$((${RANDOM} % ${RandomDelay} + 1))
      echo -e "\n命令未添加 \"now\"，随机延迟 ${CurDelay} 秒后再执行任务，如需立即终止，请按 CTRL+C...\n"
      sleep ${CurDelay}
    fi
  fi
}

## 使用说明
function Help {
  echo -e "本脚本的用法为："
  echo -e "1. bash ${HelpJd} xxx      # 如果设置了随机延迟并且当时时间不在0-2、30-31、59分内，将随机延迟一定秒数"
  echo -e "2. bash ${HelpJd} xxx now  # 无论是否设置了随机延迟，均立即运行"
  echo -e "3. bash ${HelpJd} hangup   # 重启挂机程序"
  echo -e "4. bash ${HelpJd} resetpwd # 重置控制面板用户名和密码"
  echo -e "\n针对用法1、用法2中的\"xxx\"，可以不输入后缀\".js\"，另外，如果前缀是\"jd_\"的话前缀也可以省略。"
  echo -e "当前有以下脚本可以运行（仅列出以jd_、jr_、jx_开头的脚本）："
  cd ${ScriptsDir}
  for ((i=0; i<${#ListScripts[*]}; i++)); do
    Name=$(grep "new Env" ${ListScripts[i]} | awk -F "'|\"" '{print $2}')
    echo -e "$(($i + 1)).${Name}：${ListScripts[i]}"
  done
}

## nohup
function Run_Nohup {
  if [[ $(ps -ef | grep "${js}" | grep -v "grep") != "" ]]; then
    ps -ef | grep "${js}" | grep -v "grep" | awk '{print $2}' | xargs kill -9
  fi
  [ ! -d ${LogDir}/${js} ] && mkdir -p ${LogDir}/${js}
  LogTime=$(date "+%Y-%m-%d-%H-%M-%S")
  LogFile="${LogDir}/${js}/${LogTime}.log"
  nohup node ${js}.js > ${LogFile} &
}

## 运行挂机脚本
function Run_HangUp {
  HangUpJs="jd_crazy_joy_coin"
   #"jd_cfd_loop"
  cd ${ScriptsDir}
  for js in ${HangUpJs}; do
    Import_Conf ${js} && Set_Env
    if type pm2 >/dev/null 2>&1; then
      pm2 stop ${js}.js 2>/dev/null
      pm2 flush
      pm2 start -a ${js}.js --watch "${ScriptsDir}/${js}.js" --name="${js}"
    else
      Run_Nohup >/dev/null 2>&1
    fi
  done
}

## 重置密码
function Reset_Pwd {
  cp -f ${ShellDir}/sample/auth.json ${ConfigDir}/auth.json
  echo -e "控制面板重置成功，用户名：admin，密码：password\n"
}

## 运行脚本
function Run_Normal {
  Import_Conf $1 && Detect_Cron && Set_Env
  
  FileNameTmp1=$(echo $1 | perl -pe "s|\.js||")
  FileNameTmp2=$(echo $1 | perl -pe "{s|jd_||; s|\.js||; s|^|jd_|}")
  SeekDir="${ScriptsDir} ${ScriptsDir}/backUp ${ConfigDir}"
  FileName=""
  WhichDir=""

  for dir in ${SeekDir}
  do
    if [ -f ${dir}/${FileNameTmp1}.js ]; then
      FileName=${FileNameTmp1}
      WhichDir=${dir}
      break
    elif [ -f ${dir}/${FileNameTmp2}.js ]; then
      FileName=${FileNameTmp2}
      WhichDir=${dir}
      break
    fi
  done
  
  if [ -n "${FileName}" ] && [ -n "${WhichDir}" ]
  then
    [ $# -eq 1 ] && Random_Delay
    LogTime=$(date "+%Y-%m-%d-%H-%M-%S")
    LogFile="${LogDir}/${FileName}/${LogTime}.log"
    [ ! -d ${LogDir}/${FileName} ] && mkdir -p ${LogDir}/${FileName}
    cd ${WhichDir}
    node ${FileName}.js 2>&1 | tee ${LogFile}
  else
    echo -e "\n在${ScriptsDir}、${ScriptsDir}/backUp、${ConfigDir}三个目录下均未检测到 $1 脚本的存在，请确认...\n"
    Help
  fi
}

## 命令检测
case $# in
  0)
    echo
    Help
    ;;
  1)
    if [[ $1 == hangup ]]; then
      Run_HangUp
    elif [[ $1 == resetpwd ]]; then
      Reset_Pwd
    else
      Run_Normal $1
    fi
    ;;
  2)
    if [[ $2 == now ]]; then
      Run_Normal $1 $2
    else
      echo -e "\n命令输入错误...\n"
      Help
    fi
    ;;
  *)
    echo -e "\n命令过多...\n"
    Help
    ;;
esac
