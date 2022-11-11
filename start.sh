# 处理环境变量
source ~/.profile
# 切换到工程目录
cd /opt/ijkplayer-android
#初始化
./init-android.sh
#下载OpenSSL
./init-android-openssl.sh
#切换到android/contrib目录下,编译脚本在这个目录下
cd android/contrib
#编译OpenSSL
./compile-openssl.sh clean
./compile-openssl.sh all
#或者把all替换成 armv7a arm64,只编译这两个架构，（好像不太好使，还是用all把）

#编译FFmpeg
./compile-ffmpeg.sh clean
./compile-ffmpeg.sh all
#或者把all替换成 armv7a arm64,只编译这两个架构，（好像不太好使，还是用all把）

#返回ijkplayer/android目录，编译ijkplayer的so库
cd ..
./compile-ijk.sh all
#或者把all替换成 armv7a arm64,只编译这两个架构，（好像不太好使，还是用all把）