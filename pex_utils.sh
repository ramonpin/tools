#!/usr/bin/env zsh
mkdir -p bin

echo "epr..."
pex --python=python3.8 -r =(echo git+https://github.com/wustho/epr.git) -c epr -o bin/epr

echo "awesome-hub..."
pex --python=python3.8 -r =(echo awesome-finder) -c awesome-hub -o bin/awesome-hub

echo "cbeans..."
pex --python=python3.8 -r =(echo cbeams) -c cbeams -o bin/cbeams

echo "ranger..."
pex --python=python3.8 -r =(echo ranger-fm) -c ranger -o bin/ranger

echo "tqdm..."
pex --python=python3.8 -r =(echo tqdm) -c tqdm -o bin/tqdm 

echo "termdown..."
pex --python=python3.8 -r =(echo "termdown\nsetuptools") -c termdown -o bin/termdown

echo "mycli..."
pex --python=python3.8 -r =(echo "mycli\nsetuptools") -c mycli -o bin/mycli

echo "http..."
pex --python=python3.8 -r =(echo "httpie\nsetuptools") -c http -o bin/http

echo "gitsome..."
pex --python=python3.8 -r =(echo "gitsome") -c gitsome -o bin/gitsome

echo "ytmdl..."
pex --python=python3.8 -r =(echo ytmdl) --compile -c ytmdl -o bin/ytmdl

echo "cookiecutter..."
pex --python=python3.8 -r =(echo cookiecutter) -c cookiecutter -o bin/cookiecutter

echo "xonsh..."
pex --python=python3.8 -r =(echo xonsh) -c xonsh -o bin/xonsh

