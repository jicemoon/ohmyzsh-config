@echo off
@title �л�GIT��֧


set branchName=r4.9_multi_chatactivity_v2
  

echo\&echo  ************* Web *******************
cd /d E:\Git\Web

git checkout %branchName%
set var1=%errorlevel%

if not %var1%==0 (  rem 0Ϊִ������û�д���1 �����д�����
"C:\Program Files\Git\git-bash.exe"
)
git pull



echo\&echo  ************* Admin *******************
cd /d E:\Git\Admin

git checkout %branchName%
set var1=%errorlevel%

if not %var1%==0 (  rem 0Ϊִ������û�д���1 �����д�����
"C:\Program Files\Git\git-bash.exe"
)
git pull



echo\&echo done...
pause