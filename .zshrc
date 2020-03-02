export ZSH="/home/rodolpho/.oh-my-zsh"
export GTK_IM_MODULE=cedilla

if [ -e ~/.zshrc.env ] ; then
   source ~/.zshrc.env
fi

ZSH_THEME="lambda-mod"

plugins=(
    archlinux
    git
    aws
    docker
    docker-compose
    kops
    kubectl
    minikube
    gradle
    mvn
    knife
    knife_ssh
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
