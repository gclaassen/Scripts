sudo add-apt-repository ppa:sebastian-stenzel/cryptomator
sudo add-apt-repository ppa:lazygit-team/release

sudo apt update

while true; do
    read -p "Do you wish to upgrade application?" yn
    case $yn in
        [Yy]* ) sudo apt upgrade; sudo apt dis-upgrade; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

sudo apt autoremove
sudo apt autoclean

while true; do
    read -p "Do you wish install apt managers?" yn
    case $yn in
        [Yy]* ) sudo apt -y install snapd; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you wish install drive essentials?" yn
    case $yn in
        [Yy]* ) sudo apt -y install gparted unzip pkg-config; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to install networking and vpn essentials?" yn
    case $yn in
        [Yy]* ) sudo apt -y install openssh-client; sudo apt install -y openconnect network-manager-openconnect network-manager-openconnect-gnome; sudo apt install -y openvpn network-manager-openvpn network-manager-openvpn-gnome; mkdir ~/tmp; cd ~/tmp; wget https://ocean.surfshark.com/debian/pool/main/s/surfshark-release/surfshark-release_1.0.0-2_amd64.deb; sudo dpkg -i surfshark-release_1.0.0-2_amd64.deb; sudo apt update; sudo apt-get install surfshark-vpn; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to install coding essentials?" yn
    case $yn in
        [Yy]* ) sudo apt -y install git git-lfs; sudo apt install -y build-essential cmake wget software-properties-common gfortran flex bison autoconf automake texlive texlive-publishers texlive-latex-extra texlive-fonts-extra texlive-latex-recommended texlive-science texlive-plain-generic lmodern python3-sphinx latexmk  doxygen; sudo apt install -y ttf-mscorefonts-installer graphviz gfortran; sudo snap install code --classic;  break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to install libraries?" yn
    case $yn in
        [Yy]* ) sudo apt -y install libjs-mathjax liboctave-dev libboost-all-dev libgsl-dev libmatio-dev libslicot-dev libslicot-pic libsuitesparse-dev zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libjpeg-dev libtiff5-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libxvidcore-dev libx264-dev libgtk-3-dev libhdf5-serial-dev libopenblas-dev libatlas-base-dev linux-image-generic linux-image-extra-virtual linux-source linux-headers-generic; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to install latest python (3.9.4)?" yn
    case $yn in
        [Yy]* ) mkdir ~/tmp; cd ~/tmp; wget https://www.python.org/ftp/python/3.9.4/Python-3.9.4.tgz; tar -xvzf Python-3.9.4.tgz; cd Python-3.9.4; ./configure; sudo make altinstall; python3.9 --version; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to install latex?" yn
    case $yn in
        [Yy]* ) sudo apt install -y texlive-full perl-tk; sudo apt install -y texstudio;  break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to install other application essentials?" yn
    case $yn in
        [Yy]* ) sudo snap install ohmygiraffe; sudo snap install drawio; sudo snap install yakyak; sudo snap install boa; sudo snap install gnome-clocks; sudo snap install vlc; sudo snap install qaclculate; sudo snap install syncthing; sudo snap install inkscape; sudo snap install telegram-desktop; sudo snap install whatsapp-for-linux; sudo apt install -y mc speedcrunch zsh lazygit steam calibre deluge; sudo snap install qalculate; flatpak install -y zotero; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to install security and encryption measures?" yn
    case $yn in
        [Yy]* ) sudo apt install -y cryptomator steghide qrencode; mkdir ~/tmp; cd ~/tmp; wget https://files.dyne.org/tomb/Tomb-2.9.tar.gz ; tar xvfz Tomb-2.9.tag.qz ; cd Tomb-2.9; sudo make install; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to update the oh-my-zsh?" yn
    case $yn in
        [Yy]* ) mkdir ~/tmp; cd ~/tmp; sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"; sudo apt install -y fonts-powerline;  break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to install ROS2?" yn
    case $yn in
        [Yy]* ) sudo apt update && sudo apt install locales; sudo locale-gen en_US en_US.UTF-8; sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8; sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8; sudo apt update && sudo apt install curl gnupg2 lsb-release; sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key  -o /usr/share/keyrings/ros-archive-keyring.gpg; echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null; sudo apt update && sudo apt install -y \
  build-essential \
  cmake \
  git \
  libbullet-dev \
  python3-colcon-common-extensions \
  python3-flake8 \
  python3-pip \
  python3-pytest-cov \
  python3-rosdep \
  python3-setuptools \
  python3-vcstool \
  wget; python3 -m pip install -U \
  argcomplete \
  flake8-blind-except \
  flake8-builtins \
  flake8-class-newline \
  flake8-comprehensions \
  flake8-deprecated \
  flake8-docstrings \
  flake8-import-order \
  flake8-quotes \
  pytest-repeat \
  pytest-rerunfailures \
  pytest; sudo apt install --no-install-recommends -y \
  libasio-dev \
  libtinyxml2-dev; sudo apt install --no-install-recommends -y \
  libcunit1-dev; mkdir -p ~/ros2_foxy/src; cd ~/ros2_foxy; wget https://raw.githubusercontent.com/ros2/ros2/foxy/ros2.repos; vcs import src < ros2.repos; sudo rosdep init; rosdep update; rosdep install --from-paths src --ignore-src --rosdistro foxy -y --skip-keys "console_bridge fastcdr fastrtps rti-connext-dds-5.3.1 urdfdom_headers"; cd ~/ros2_foxy/; colcon build --symlink-install; . ~/ros2_foxy/install/local_setup.bash; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to update the firmware?" yn
    case $yn in
        [Yy]* ) sudo fwupdmgr get-devices; sudo fwupdmgr get-updates; sudo fwupdmgr update; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Reboot?" yn
    case $yn in
        [Yy]* ) sudo reboot now; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
