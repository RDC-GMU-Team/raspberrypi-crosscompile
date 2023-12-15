# Raspberrry pi Cross compile toolchain
This is a docker based cross compile toolchain for raspberry pi. 

# Installing
1. Install Docker 
2. Build the cross compile image
        docker build -t raspberrypi-build:latest ./docker-crosscompile

3. Setup the sysroot from a raspberry pi
        ./get_sysroot.sh [raspberrypi hostname]
   
4. Use this image for your compilation. Use the cmake toolchain file in ```cmake/``` in your cross compile project

