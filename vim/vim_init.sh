mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

mv ~/.vimrc ~/.vimrc_

SCRIPT_DIR=$(cd $(dirname $0);pwd)
ln -s ${SCRIPT_DIR}/.vimrc ~/.vimrc
