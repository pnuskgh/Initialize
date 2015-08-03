#!/bin/bash
### ================================================================================================
###     프로그램 명              : initialize.bash, Version 0.00.002
###     프로그램 설명         	: CentOS 초기화 (수작업)
###                                       https://github.com/pnuskgh/Initialize
###     작성자                     : 산사랑 (consult@jopenbusiness.com, www.jopenbusiness.com)
###     작성일                     : 2015.7.29 ~ 2015.8.03
### --- [History 관리] -------------------------------------------------------------------------------
###     2015.07.29, 산사랑 : 초안 작성
### --- [Copyright] --------------------------------------------------------------------------------
###     Copyright (c) 1995~2015 산사랑, 오픈소스 비즈니스 컨설팅
###     All rights reserved.
### ================================================================================================


### ------------------------------------------------------------------------------------------------
###     root 사용자로 작업을 하고 있는지 확인 합니다.
### ------------------------------------------------------------------------------------------------
TMPSTR=`env | grep USER`
if [ "$TMPSTR" = "USER=root" ]; then
    echo ""
else
    echo "root 사용자로 작업 하세요."
    exit 1
fi

### ------------------------------------------------------------------------------------------------
###     최신 OS로 update
### ------------------------------------------------------------------------------------------------
yum clean all
yum update -y

### Linux OS와 Version 정보 표시
cat /etc/system-release

### ------------------------------------------------------------------------------------------------
###     Git 설치와 환경 설정
### ------------------------------------------------------------------------------------------------
yum install -y git

git config --global user.name "pnuskgh"
git config --global user.email "pnuskgh@gmail.com"
git config --global color.ui auto
git config --global alias.st status
git config --global core.editor vim
git config --global merge.tool vimdiff
git config --global push.default simple
git config --list

mkdir ~/repo_git
cd ~/repo_git
git clone https://github.com/pnuskgh/Initialize.git
cd Initialize

### ------------------------------------------------------------------------------------------------
###     Linux 작업 환경 설정
### ------------------------------------------------------------------------------------------------

echo " "
echo "수작업으로 아래 작업을 진행 합니다"
echo " "
echo "vi ~/.ssh/id_rsa"
echo "   pnuskgh 사용자의 private key를 등록 합니다."
echo "chmod 0600 ~/.ssh/id_rsa"
echo " "
echo "cd ~/repo_git"
echo "git clone ssh://consult@gerrit.osscloud.biz:29418/jopenbusiness"
echo " "

### ================================================================================================
