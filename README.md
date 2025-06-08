# usage
in cinnamon set a shortcut for LKLA
in the command field enter `LKLA <string>`
set the string to character(s) that you dont have on your keyboard

## example
set shortcut to super+a and the command to `LKLA ä`

# installation
## debian or debian based
download the .deb file
## other linux distros, bsd, windows or mac
download the precompiled binaries

## building
install git to download the repo ```sudo apt update && sudo apt install git```

clone the repo ```git clone https://github.com/WerIstLuka/LKLA```

change directory to int ```cd LKLA```

use the build script to build ```bash build.sh```

use the `-dev` flag to skip compiling for other architectures

the binaries and debian packages will be in the build directory
