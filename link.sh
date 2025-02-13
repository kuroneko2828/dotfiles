#!bin/zsh
function create_all_links_in_dir(){
    # $1: app name
    # $2: dir name
    files=`find $1 -type f -maxdepth 1`
    for file in ${files}; do
	ln -fs ${PWD}/${file} $2/${file}
    done
}

config_dir=$HOME/.config
if [[ ! -d ${config_dir} ]]; then
    mkdir ${config_dir}
fi

echo 'create symbolic link'
# single files
ln -fs ${PWD}/.zshrc ${HOME}/.zshrc
ln -fs ${PWD}/.zprofile ${HOME}/.zprofile
ln -fs ${PWD}/.gitconfig ${HOME}/.gitconfig

# config dir
cd .config
# alacritty
if [[ ! -d ${config_dir}/alacritty ]]; then
    mkdir ${config_dir}/alacritty
fi
create_all_links_in_dir alacritty ${config_dir}

# zsh
if [[ ! -d ${config_dir}/zsh ]]; then
    mkdir ${config_dir}/zsh
fi
create_all_links_in_dir zsh ${config_dir}

# nvim
if [[ ! -d ${config_dir}/nvim ]]; then
    mkdir ${config_dir}/nvim
fi
if [[ ! -d ${config_dir}/nvim/rc ]]; then
    mkdir ${config_dir}/nvim/rc
fi
create_all_links_in_dir nvim ${config_dir}
create_all_links_in_dir nvim/rc ${config_dir}

# starship
if [[ ! -d ${config_dir}/starship ]]; then
    mkdir ${config_dir}/starship
fi
create_all_links_in_dir starship ${config_dir}

# tmux
if [[ ! -d ${config_dir}/tmux ]]; then
    mkdir ${config_dir}/tmux
fi
create_all_links_in_dir tmux ${config_dir}

cd ../
