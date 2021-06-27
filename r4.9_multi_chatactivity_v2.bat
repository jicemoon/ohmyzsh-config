@echo off
@title 切换GIT分支


set branchName=r4.9_multi_chatactivity_v2
  

echo\&echo  ************* Web *******************
cd /d E:\Git\Web

git checkout %branchName%
set var1=%errorlevel%

if not %var1%==0 (  rem 0为执行命名没有错误，1 就是有错误了
"C:\Program Files\Git\git-bash.exe"
)
git pull



echo\&echo  ************* Admin *******************
cd /d E:\Git\Admin

git checkout %branchName%
set var1=%errorlevel%

if not %var1%==0 (  rem 0为执行命名没有错误，1 就是有错误了
"C:\Program Files\Git\git-bash.exe"
)
git pull



echo\&echo done...
pause