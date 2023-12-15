##
# Raspberry Pi cmake toolchain
#
#
# The sysroot can can be copied from an existing Raspberry pi. Put that in a known sysroot directory and
# use the specific directory below
##

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_SYSTEM_PROCESSOR arm64)

set(TARGET_TRIPLE arm-linux-gnueabihf)

# Note: Make sure you have the software tools dir set in the project level CMakeLists.txt.
set(RASPBERRYPI_SYSROOT    ${SOFTWARE_TOOLS_DIR}/cross-compile/raspberrypi/sysroot)

# gcc8.3 compilers, linker, etc.
set(CMAKE_C_COMPILER    ${TARGET_TRIPLE}-gcc)
set(CMAKE_CXX_COMPILER  ${TARGET_TRIPLE}-g++)
set(CMAKE_ASM_COMPILER  ${TARGET_TRIPLE}-as)
set(CMAKE_LINKER        ${TARGET_TRIPLE}-ld)
set(CMAKE_AR            ${TARGET_TRIPLE}-ar)
set(CMAKE_OBJCOPY       ${TARGET_TRIPLE}-objcopy    CACHE INTERNAL "")
set(CMAKE_RANLIB        ${TARGET_TRIPLE}-ranlib     CACHE INTERNAL "")
set(CMAKE_SIZE          ${TARGET_TRIPLE}-size       CACHE INTERNAL "")
set(CMAKE_STRIP         ${TARGET_TRIPLE}-strip      CACHE INTERNAL "")

# Set Sysroot to be the local copy of google coral rootfs
set(CMAKE_SYSROOT ${RASPBERRYPI_SYSROOT})
set(CMAKE_FIND_ROOT_PATH ${RASPBERRYPI_SYSROOT})

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

# Set compiler and linker flags
# TODO: Add flags
