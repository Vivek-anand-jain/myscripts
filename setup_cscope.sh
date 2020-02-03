#!/bin/bash

sudo apt install -y cscope
mkdir -p $HOME/.vim/plugin/
cd $HOME/.vim/plugin/
wget http://cscope.sourceforge.net/cscope_maps.vim

cat > ~/cscope.sh << EOF
find ./ -name '*.c' -o -name '*.h' -o -name '*.hpp' -o -name '*.cc' > ./cscope.files
cscope -b
CSCOPE_DB=$(pwd)/cscope.out; export CSCOPE_DB
EOF

chmod +x ~/cscope.sh
cd -
