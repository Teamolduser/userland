# --------------- Copyright 2022 Fantox Gaming ------------

apt-get install figlet

echo "Copyright By 2022 Olduer"

figlet Olduser

pause() {
    read -n1 -r -p "Press Any Key To Start Process..." key
apt-get update
apt-get upgrade
}

echo "Starting Installing Of Tools For Terminal"

getinfo() {
    if [[ "$OSTYPE" == linux-android* ]]; then
            distro="termux"
    fi

    if [ -z "$distro" ]; then
        distro=$(ls /etc | awk 'match($0, "(.+?)[-_](?:release|version)", groups) {if(groups[1] != "os") {print groups[1]}}')
    fi

    if [ -z "$distro" ]; then
        if [ -f "/etc/os-release" ]; then
            distro="$(source /etc/os-release && echo $ID)"
        else 
            distro="invalid"
        fi
    fi
}

envinfo(){
    declare -A backends; backends=(
        ["arch"]="pacman -S --noconfirm"
        ["debian"]="apt-get -y install"
        ["ubuntu"]="apt -y install"
        ["termux"]="apt -y install"
        ["fedora"]="yum -y install"
        ["redhat"]="yum -y install"
        ["SuSE"]="zypper -n install"
        ["sles"]="zypper -n install"
        ["darwin"]="brew install"
        ["alpine"]="apk add"
    )

   INSTALL="${backends[$distro]}"

    if [ "$distro" == "termux" ]; then
        SUDO=""
    else
        SUDO="sudo"
    fi
}

install_packages(){
    
    packages=(git curl ffmpeg figlet bash libwebp-dev nodejs  wget yarn npm imagemagick)
    if [ -n "$INSTALL" ];then
        for package in ${packages[@]}; do
            $SUDO $INSTALL $package
        done
    else
        echo "Failed."
        exit
    fi
}
clear
pause
clear
$SUDO  apt -y remove nodejs
curl -fsSl https://deb.nodesource.com/setup_18.x | $SUDO bash - && $SUDO apt -y install nodejs
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | $SUDO apt-key add - 
echo "deb https://dl.yarnpkg.com/debian/ stable main" | $SUDO tee /etc/apt/sources.list.d/yarn.list
$SUDO apt -y update && $SUDO apt -y install yarn
getinfo
envinfo
install_packages
clear

figlet Olduser

echo "Enter Your Github Username" 
read usrnme
echo "Enter Your Github Repo Name"
read repo

# echo "Put Your Name"
# read rndm

clear


# ----------👇👇👇 Here you can use your bot's github link 👇👇👇--------- 

figlet Olduser

echo "Removing old files"
rm -rf ${repo}
rm -rf ${repo}

echo "👇👇👇 staring bot cloning 👇👇👇"

git clone https://github.com/"${usrnme}"/"${repo}"

clear
# -----------------------------------------------------------------------------

figlet Olduser

ls

cd ${repo}

rm -rf package.json
wget https://github.com/"${usrnme}"/"${repo}"/raw/main/package.json

ls

yarn install 

cd ..

ls

clear
# -----------------To stop bot------------------

figlet Olduser

clear
 
echo "If You Want To Stop Bot Press"
echo "ctrl + c"

# -----------------To start bot ( While you are inside Miku-MD folder )------------------

echo "To start bot --- While you are inside the bot folder"

echo "Just Type yarn start"

# -------------Start bot after UserLand session is cleared------------------

echo "Start bot after UserLand session is cleared"
echo "Just Type Below Commands"
echo "cd ${repo}"
echo "yarn start"


# ------------ What to do if you logged out from the WhatsApp linked device section and want to get new qr to login --------------

echo "What To Do If You Logged Out From The Whatsapp Linked Device Section And Want To Get New Qr To Login Then On Look-up On https://github.com/"${usrnme}"/"${repo}"
echo "cd ${repo}"
echo "rm session.json"
echo "yarn start"
echo "Below Link Of ${repo}"
echo "https://github.com/"${usrnme}"/"${repo}"

clear
# -------------------------xxxxxxxxxxxxxxxxxxxxxxxxxxx-------------------------
figlet olduser








# -------------------------------------( Thank You )-----------------------------------------------

echo "Thank You"

clear

echo "BOT STARTING  PROCESS HAS BEEN STARTED"