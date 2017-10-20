#!/bin/bash
here=$(pwd)
cd ~/
git clone https://github.com/Itseez/opencv.git
git clone https://github.com/Itseez/opencv_contrib.git
cd opencv_contrib
git checkout 3.2.0
cd ../opencv
git checkout 3.2.0
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules -D BUILD_EXAMPLES=ON -D WITH_GSTREAMER=OFF ..
sudo make -j2
sudo make install
sudo ldconfig
cd /usr/local/lib/python3.4/dist-packages
filepath=$(pwd)/$(ls | grep "cv2*.so")
sudo ln -s $filepath cv2.so
cd $here
