#!/bin/sh
#
# Copyright (C) 2021 老竭力
#
# This is free software, licensed under the GNU General Public License v3.
# See /LICENSE for more information.
#
clear

echo "
     ██╗██████╗     ██████╗  ██████╗  ██████╗██╗  ██╗███████╗██████╗ 
     ██║██╔══██╗    ██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗
     ██║██║  ██║    ██║  ██║██║   ██║██║     █████╔╝ █████╗  ██████╔╝
██   ██║██║  ██║    ██║  ██║██║   ██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗
╚█████╔╝██████╔╝    ██████╔╝╚██████╔╝╚██████╗██║  ██╗███████╗██║  ██║
 ╚════╝ ╚═════╝     ╚═════╝  ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
                                                                     
                     ==== Create by 老竭力 ====                                 
"
DOCKER_IMG_NAME="lingfeng0918/jd"
JD_PATH=""
SHELL_FOLDER=$(pwd)
CONTAINER_NAME=""
CONFIG_PATH=""
LOG_PATH=""
TAG="v3"
NETWORK="host"
JD_PORT=5678

HAS_IMAGE=false
EXT_SCRIPT=false
PULL_IMAGE=true
HAS_CONTAINER=false
DEL_CONTAINER=true
INSTALL_WATCH=false
TEST_BEAN_CHAGE=false
OLD_IMAGE_ID=""
MOUNT_SCRIPT=""
MAPPING_PORT=""

log() {
    echo -e "\e[32m$1 \e[0m\n"
}

inp() {
    echo -e "\e[33m\n$1 \e[0m\n"
}

warn() {
    echo -e "\e[31m$1 \e[0m\n"
}

cancelrun() {
    if [ $# -gt 0 ]; then
        echo     "\033[31m $1 \033[0m"
    fi
    exit 1
}

docker_install() {
    echo "检查Docker......"
    if [ -x "$(command -v docker)" ]; then
       echo "检查到Docker已安装!"
    else
       if [ -r /etc/os-release ]; then
            lsb_dist="$(. /etc/os-release && echo "$ID")"
        fi
        if [ $lsb_dist == "openwrt" ]; then
            echo "openwrt 环境请自行安装docker"
            #exit 1
        else
            echo "安装docker环境..."
            curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun
            echo "安装docker环境...安装完成!"
            systemctl enable docker
            systemctl start docker
        fi
    fi
}

docker_install
warn "\n一路有我，回车即可，小白福音！！！"
#配置文件目录
echo -n -e "\e[33m一.请输入配置文件保存的绝对路径,直接回车为当前目录:\e[0m"
read jd_path
JD_PATH=$jd_path
if [ -z "$jd_path" ]; then
    JD_PATH=$SHELL_FOLDER
fi
CONFIG_PATH=$JD_PATH/jd_docker/config
LOG_PATH=$JD_PATH/jd_docker/log
SCRIPT_PATH=$JD_PATH/jd_docker/scripts

inp "是否将scripts目录映射到外部：\n1) 是\n2) 不需要[默认]"
echo -n -e "\e[36m输入您的选择->\e[0m"
read ext_s
if [ "$ext_s" = "1" ]; then
    EXT_SCRIPT=true
fi

#检测镜像是否存在
if [ ! -z "$(docker images -q $DOCKER_IMG_NAME:$TAG 2> /dev/null)" ]; then
    HAS_IMAGE=true
    OLD_IMAGE_ID=$(docker images -q --filter reference=$DOCKER_IMG_NAME:$TAG)
    inp "检测到先前已经存在的镜像，是否拉取最新的镜像：\n1) 是[默认]\n2) 不需要"
    echo -n -e "\e[36m输入您的选择->\e[0m"
    read update
    if [ "$update" = "2" ]; then
        PULL_IMAGE=false
    fi
fi

#检测容器是否存在
check_container_name() {
    if [ ! -z "$(docker ps -a | grep $CONTAINER_NAME 2> /dev/null)" ]; then
        HAS_CONTAINER=true
        inp "检测到先前已经存在的容器，是否删除先前的容器：\n1) 是[默认]\n2) 不要"
        echo -n -e "\e[36m输入您的选择->\e[0m"
        read update
        if [ "$update" = "2" ]; then
            PULL_IMAGE=false
            inp "您选择了不要删除之前的容器，需要重新输入容器名称"
            input_container_name
        fi
    fi
}

#容器名称
input_container_name() {
    echo -n -e "\e[33m三.请输入要创建的Docker容器名称[默认为：jd]->\e[0m"
    read container_name
    if [ -z "$container_name" ]; then
        CONTAINER_NAME="jd"
    else
        CONTAINER_NAME=$container_name
    fi
    check_container_name
}
input_container_name

#是否安装WatchTower
inp "5.是否安装containrrr/watchtower自动更新Docker容器：\n1) 安装\n2) 不安装[默认]"
echo -n -e "\e[33m输入您的选择->\e[0m"
read watchtower
if [ "$watchtower" = "1" ]; then
    INSTALL_WATCH=true
fi

inp "请选择容器的网络类型：\n1) host[默认]\n2) bridge"
echo -n -e "\e[36m输入您的选择->\e[0m"
read net
if [ "$net" = "2" ]; then
    NETWORK="bridge"
fi

if [ "$NETWORK" = "bridge" ]; then
    echo -n -e "\e[36m输入自定义的映射端口[默认为：5678]->\e[0m"
    read jd_port
    JD_PORT=$jd_port
    if [ -z "$jd_port" ]; then
        JD_PORT=5678
    fi
fi

#配置已经创建完成，开始执行

log "1.开始创建配置文件目录"
mkdir -p $CONFIG_PATH
mkdir -p $LOG_PATH
if [ $EXT_SCRIPT = true ]; then
    mkdir -p $SCRIPT_PATH
fi

if [ $HAS_CONTAINER = true ] && [ $DEL_CONTAINER = true ]; then
    log "2.1.删除先前的容器"
    docker stop $CONTAINER_NAME >/dev/null
    docker rm $CONTAINER_NAME >/dev/null
fi

if [ $HAS_IMAGE = true ] && [ $PULL_IMAGE = true ]; then
    if [ ! -z "$OLD_IMAGE_ID" ] && [ $HAS_CONTAINER = true ] && [ $DEL_CONTAINER = true ]; then
        log "2.2.删除旧的镜像"
        docker image rm $OLD_IMAGE_ID 
    fi
    log "2.3.开始拉取最新的镜像"
    docker pull $DOCKER_IMG_NAME:$TAG
fi

if [ "$EXT_SCRIPT" = true ]; then
    MOUNT_SCRIPT="-v $SCRIPT_PATH:/jd/scripts"
fi

if [ "$NETWORK" = "bridge" ]; then
    MAPPING_PORT="-p $JD_PORT:5678"
fi

log "3.开始创建容器并执行"
docker run -dit \
    -v $CONFIG_PATH:/jd/config \
    -v $LOG_PATH:/jd/log \
    $MOUNT_SCRIPT \
    $MAPPING_PORT \
    --name $CONTAINER_NAME \
    --hostname jd \
    --restart always \
    --network $NETWORK \
    $DOCKER_IMG_NAME:$TAG

if [ $INSTALL_WATCH = true ]; then
    log "3.1.开始创建容器并执行"
    docker run -d \
    --name watchtower \
    --restart always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    containrrr/watchtower \
    --cleanup
fi

#检查config文件是否存在

if [ ! -f "$CONFIG_PATH/config.sh" ]; then
    docker cp $CONTAINER_NAME:/jd/sample/config.sh.sample $CONFIG_PATH/config.sh
 fi

log "4.下面列出所有容器"
docker ps

log "5.安装已经完成。\n现在你可以访问设备的 ip:5678 用户名：admin  密码：password  来添加cookie，和其他操作。感谢使用！"
