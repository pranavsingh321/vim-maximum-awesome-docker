FROM python:3.7

RUN apt-get update && \
    apt-get remove vim vim-runtime gvim && \
    git clone https://github.com/vim/vim.git && \
    cd vim && ./configure --enable-python3interp --enable-rubyinterp \
                          --enable-gui=no --without-x --enable-cscope \
                          --enable-multibyte --prefix=/usr && \
    make install && \
    apt-get install -y cmake rake ripgrep tmux ctags golang nodejs npm && \
    apt-get clean

RUN mkdir -p ~/.vim/bundle && \
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

RUN git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe && \
    cd ~/.vim/bundle/YouCompleteMe && \
    git submodule update --init --recursive && \
    ./install.py --go-completer --ts-completer --java-completer --clangd-completer

COPY . /vim-maximum-awesome-docker

WORKDIR "./vim-maximum-awesome-docker"

RUN cp -rf vim/* ~/.vim/ && cp tmux.conf ~/.tmux.conf && cp vimrc ~/.vimrc && \
    cp vimrc.bundles.local ~/.vimrc.bundles.local && cp vimrc.bundles ~/.vimrc.bundles

RUN vim -c "PluginInstall!" -c "qa"

ENTRYPOINT /bin/bash
