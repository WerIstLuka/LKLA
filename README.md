# usage
in cinnamon set a shortcut for LKLA
in the command field enter `LKLA <string>`
set the string to character(s) that you dont have on your keyboard

## example
set shortcut to super+a and the command to `LKLA ä`

# installation
## debian or debian based (only amd64)
download the .deb file

## building
install git to download the repo ```sudo apt update && sudo apt install git```

clone the repo ```git clone https://github.com/WerIstLuka/LKLA```

change directory to LKLA ```cd LKLA```

use `go build` to build

for the debian package you can do `bash mkdpkg.sh`
