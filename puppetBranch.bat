@echo off
echo Pulling current production puppet
cd C:\puppet\puppet
git checkout production
git pull
echo Creating Puppet branch called feature/%1
git checkout -b feature/%1
echo Pushing branch to origin
git push origin feature/%1
echo Linking local branch to remote branch
git branch -u origin/feature/%1