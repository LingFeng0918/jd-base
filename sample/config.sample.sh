## Version: v4.4.1
## Date: 2021-05-13
## Update Content: EnableTaskFinishShell=true时，给task_finish.sh增加一个参考文件的链接。

## ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ 第一区域：jd_scripts特有变量填写区域（需要shell转换的） ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

## Cookie（必填，由脚本去export JD_COOKIE，无需在config.sh中export）
## 请依次填入每个用户的Cookie，Cookie的具体形式（只有pt_key字段和pt_pin字段，没有其他字段）：pt_key=xxxxxxxxxx;pt_pin=xxxx;
Cookie1=""
Cookie2=""

## 每日签到的通知形式（选填，JD_BEAN_SIGN_STOP_NOTIFY和JD_BEAN_SIGN_NOTIFY_SIMPLE，由脚本去export，无需在config.sh中export）
## js脚本每日签到提供3种通知方式，分别为：关闭通知，请填入0；简洁通知，请填入1；长通知，请填入2
NotifyBeanSign=""

## ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 第一区域：jd_scripts脚本特有变量填写区域（需要shell转换的） ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑



## ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ 第二区域：jd_scripts特有变量填写区域（不需要shell转换的） ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

## 请在本区域补充其他你需要用到变量，export 变量名="变量值"，或：export 变量名='变量值'
## 创建容器后在容器内运行 cat /jd/scripts/githubAction.md ，或访问 https://github.com/wisz2021/jd_docker/blob/main/githubAction.md 可查看环境变量清单
## 该链接中除JD_COOKIE、JD_BEAN_SIGN_STOP_NOTIFY、JD_BEAN_SIGN_NOTIFY_SIMPLE这三个变量以及所有互助码类变量外，其他所有变量请在本区域自行补充


## ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 第二区域：jd_scripts脚本特有变量填写区域（不需要shell转换的） ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑



## ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ 第三区域：互助码填写区域 ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

## 所有互助码活动，请在运行过一次需要互助的活动脚本以后，再运行一次jcode即可获取，将jcode的输出内容粘贴在本区域中即可，或粘贴在config/sharecode.sh中
## 如想在运行互助活动脚本时直接从jcode中自动获取互助码并进行互助，请将第四区域中 AutoHelpOther 设置为true
## 当 AutoHelpOther 设置为 true 时，jtask会先导入jcode最新日志，再导入config/sharecode.sh，如果你希望不完全按照jcode日志内容进行互助，你可以按需要修改config/sharecode.sh，config/sharecode.sh赋值内容会覆盖jcode日志中同名变量


## ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 第三区域：互助码填写区域 ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑



## ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ 第四区域：本shell脚本特有变量填写区域 ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

## 临时屏蔽某个Cookie（选填）
## 如果某些Cookie已经失效了，但暂时还没法更新，可以使用此功能在不删除该Cookie和重新修改Cookie编号的前提下，临时屏蔽掉某些编号的Cookie
## 多个Cookie编号以半角的空格分隔，两侧一对半角双引号，使用此功能后，在运行js脚本时账号编号将发生变化
## 举例1：TempBlockCookie="2"    临时屏蔽掉Cookie2
## 举例2：TempBlockCookie="2 4"  临时屏蔽掉Cookie2和Cookie4
TempBlockCookie=""

## 如果只是想要屏蔽某个账号不玩某些小游戏，可以参考下面 case 这个命令的例子来控制，脚本名称（不含路径）请去掉后缀 “.js”，包括own脚本和其他你自己添加的脚本，均按这样处理。
## case $1 in
##   jd_fruit)
##     TempBlockCookie="5"      # 账号5不玩jd_fruit
##     ;;
##   jd_dreamFactory | jd_jdfactory)
##     TempBlockCookie="2"      # 账号2不玩jd_dreamFactory和jd_jdfactory
##     ;;
##   jd_jdzz | jd_joy)
##     TempBlockCookie="3 6"    # 账号3、账号6不玩jd_jdzz和jd_joy
##     ;;
## esac

## 是否自动删除 jd_scripts 项目中失效的定时任务（选填）
AutoDelCron="true"

## 是否自动增加 jd_scripts 项目中新的本地定时任务（选填）
AutoAddCron="true"

## 删除日志的时间（选填） 
## 在运行删除旧的日志任务时，要删除多少天以前的日志，请输入正整数，不填则禁用删除日志的功能
RmLogDaysAgo="7"

## 随机延迟启动任务（选填）
## 如果任务不是必须准点运行的任务，那么给它增加一个随机延迟，由你定义最大延迟时间，单位为秒，如 RandomDelay="300" ，表示任务将在 1-300 秒内随机延迟一个秒数，然后再运行
## 在crontab.list中，在每小时第0-2分、第30-31分、第59分这几个时间内启动的任务，均算作必须准点运行的任务，在启动这些任务时，即使你定义了RandomDelay，也将准点运行，不启用随机延迟
## 在crontab.list中，除掉每小时上述时间启动的任务外，其他任务在你定义了 RandomDelay 的情况下，一律启用随机延迟，但如果你按照Wiki教程给某些任务添加了 "now"，那么这些任务也将无视随机延迟直接启动
RandomDelay="300"

## 自动按顺序进行账号间互助（选填）
## 设置为 true 时，将直接导入 jcode 最新日志来进行互助，如希望不完全按照jcode 最新日志来互助，可以在config目录下新建sharecode.sh，内容参考jcode日志并按需修改，sharecode.sh赋值内容会覆盖jcode日志中同名变量
## 如果启用了TempBlockCookie，那么只是被屏蔽的账号不助力其他账号，其他账号还是会助力被屏蔽的账号
## 如不需要自动互助，请设置为false，并将jcode脚本输出日志粘贴在第三区域或粘贴在config/sharecode.sh中，并自行根据需要进行修改
AutoHelpOther=""

## 定义 jcode 脚本导出的互助码模板样式（选填）
## 不填 使用“按编号顺序助力模板”，Cookie编号在前的优先助力
## 填 0 使用“全部一致助力模板”，所有账户要助力的码全部一致
## 填 1 使用“均等机会助力模板”，所有账户获得助力次数一致
## 填 2 使用“随机顺序助力模板”，本套脚本内账号间随机顺序助力，每次生成的顺序都不一致。
HelpType=""

## 当检测到scripts/githubAction.md文件发生变化时是否发送通知，该文件是jd_scripts所有环境变量的清单，填 true 则发送
EnvChangeNotify=""

## 是否在运行jup后再额外运行你自己写的 shell 脚本（选填）
## 如果你自己会写 shell 脚本，并且希望在每次 jup 这个脚本运行时，额外运行你的 shell 脚本，请赋值为 "true"
## 同时，请务必将你的脚本命名为 diy.sh (只能叫这个文件名)，放在 config 目录下
EnableJupDiyShell=""

## 是否在运行jtask/otask/mtask后再额外运行你自己写的 shell 脚本（选填）
## 如果你自己会写 shell 脚本，并且希望在每次 jtask/otask/mtask 脚本后，额外运行你的 shell 脚本，请赋值为 "true"
## 同时，请务必将你的脚本命名为 task_finish.sh (只能叫这个文件名)，放在 config 目录下
## 注意：只在正常依次运行单个任务时才会额外运行 task_finish.sh，账号并发运行，或运行所有脚本时不会额外运行
## 参考文件：https://gitee.com/evine/my_scripts/blob/master/task_finish.sh ，千万千万不要照搬
EnableTaskFinishShell=""

## 启用其他开发者的仓库方式一（选填）：完整更新整个仓库，针对同一个仓库，方式一和方式二只能选择一种
## OwnRepoUrl：仓库地址清单，必须从1开始依次编号
## OwnRepoBranch：你想使用的分支清单，不指定分支（即使用默认分支）时可以用一对不包含内容的空引号""，编号必须和 OwnRepoUrl 对应。
## OwnRepoPath：要使用的脚本在仓库哪个路径下，请输入仓库下的相对路径，默认空值""代表仓库根目录，编号必须和 OwnRepoUrl 对应，同一个仓库下不同文件夹之间使用空格分开。如果既包括根目录又包括子目录，填写请见示例中OwnRepoPath3。
## 所有脚本存放在 own 目录下，三个清单必须一一对应，示例如下：
## OwnRepoUrl1="https://gitee.com/abc/jdtsa.git"
## OwnRepoUrl2="https://github.com/nedcd/jxddfsa.git"
## OwnRepoUrl3="git@github.com:eject/poex.git"
## 
## OwnRepoBranch1=""         # 代表第1个仓库 https://gitee.com/abc/jdtsa.git 使用 "默认" 分支
## OwnRepoBranch2="main"     # 代表第2个仓库 https://github.com/nedcd/jxddfsa.git 使用 "main" 分支
## OwnRepoBranch3="master"   # 代表第3个仓库 git@github.com:eject/poex.git 使用 "master" 分支
## 
## OwnRepoPath1=""                   # 代表第1个仓库https://gitee.com/abc/jdtsa.git，你想使用的脚本就在仓库根目录下。
## OwnRepoPath2="scripts/jd normal"  # 代表第2个仓库https://github.com/nedcd/jxddfsa.git，你想使用的脚本在仓库的 scripts/jd 和 normal文件夹下，必须输入相对路径
## OwnRepoPath3="'' cron"            # 代表第3个仓库git@github.com:eject/poex.git，你想使用的脚本在仓库的 根目录 和 cron 文件夹下，必须输入相对路径

OwnRepoUrl1=""
OwnRepoUrl2=""

OwnRepoBranch1=""
OwnRepoBranch2=""

OwnRepoPath1=""
OwnRepoPath2=""

## 启用其他开发者的仓库方式二（选填）：只下载想要的文件，针对同一个仓库，方式一和方式二只能选择一种。
## 请先确认你能正常下载该raw文件才列在下方，无论是github还是gitee，请只填入 raw 文件链接。
## 一行一个文件下载链接，首尾一对半角括号，示例：
## OwnRawFile=(
##     https://gitee.com/wabdwdd/scipts/raw/master/jd_abc.js
##     https://github.com/lonfeg/loon/raw/main/jd_dudi.js
##     https://github.com/sunsem/qx/raw/main/z_dida.js
## )
OwnRawFile=(

)

## 是否自动增加 own 类脚本（其他开发者脚本）的cron任务（选填）
## 本shell脚本不一定能完全从js脚本中识别出有效的cron设置，如果发现不能满足你的需要，请设置为 "false" 以取消自动增加。
AutoAddOwnCron="true"

## 是否自动删除 own 类脚本（其他开发者脚本）的cron任务（选填）
## 本shell脚本不一定能完全从js脚本中识别出有效的cron设置，如果发现不能满足你的需要，请设置为 "false" 以取消自动删除。
AutoDelOwnCron="true"

## ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 第四区域：本shell脚本特有变量填写区域 ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑



## ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ 第五区域：额外的环境变量填写区域 ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

## 请在以下补充你需要用到的额外的环境变量，形式：export 变量名="变量值"，或：export 变量名='变量值'


## ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 第五区域：额外的环境变量填写区域 ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
