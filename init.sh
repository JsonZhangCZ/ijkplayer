# 1. 进入源码目录
cd /opt/ijkplayer-android
# 2. 刷新系统环境变量
source ~/.profile
#检查版本
git checkout -B latest k0.8.8
# 3. 指定分支
git checkout -B latest k0.8.8
# 4. 全量编译
cd config
rm module.sh
ln -s module-default.sh module.sh