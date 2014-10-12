#!/bin/sh

GIT_DIR=bare.git

mkdir -p $GIT_DIR
cd $GIT_DIR
git init --bare
cd ..
cp post-receive $GIT_DIR/hooks
echo "#input path like: SERVER_DIR=/usr/local/tomcat" >> conf.rc
echo "SERVER_DIR=" >> conf.rc
echo "!!important!!"
echo "!!please input the resin/tomcat path to conf.rc"
