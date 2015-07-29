#!/bin/bash
### ================================================================================================
###     프로그램 명              : initialize.bash, Version 0.00.001
###     프로그램 설명         	: CentOS 초기화 (수작업)
###     작성자                     : 산사랑 (consult@jopenbusiness.com, www.jopenbusiness.com)
###     작성일                     : 2015.7.29 ~ 2015.7.29
### --- [History 관리] -------------------------------------------------------------------------------
###     2015.07.29, 산사랑 : 초안 작성
### --- [Copyright] --------------------------------------------------------------------------------
###     Copyright (c) 1995~2015 산사랑, 오픈소스 비즈니스 컨설팅
###     All rights reserved.
### ================================================================================================
yum install -y git

git config --global user.name "consult"
git config --global user.email "consult@jopenbusiness.com"
git config --list

mkdir ~/repo_git
cd ~/repo_git
git clone https://github.com/pnuskgh/Initialize.git
cd Initialize

### ================================================================================================
