### install and configure a new dev env ###

# Ubuntu 24.04

packages=(ripgrep make curl git python3.12-venv fish tmux gnome-tweaks curl neovim openssh-server net-tools python-is-python3 taskwarrior timewarrior)
docker_packages=(docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin)



apt_install () {

    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt-get install -y "${packages[@]}"

}

git_stuff() {

    cd installers/bass
    make install
    git config --global core.editor nvim
}

curl_stuff() {
    curl -sS https://starship.rs/install.sh | sh
    echo "starship init fish | source" >> ~/.config/fish/config.fish
}

docker_install () {

    # Add Docker's official GPG key:
    sudo apt-get update
    sudo apt-get install ca-certificates curl
    sudo install -m 0755 -d /etc/apt/keyrings
    sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
    sudo chmod a+r /etc/apt/keyrings/docker.asc

    # Add the repository to Apt sources:
    echo \
      "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
      $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
      sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update    

    
    sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

}



