#!/usr/bin/env zsh
mkdir -p bin
PYTHON="--python=python3.8"

echo "epr..."
eval pex ${PYTHON} -r =(echo epr-reader) -c epr -o bin/epr

echo "awesome-hub..."
eval pex ${PYTHON} -r =(echo awesome-finder) -c awesome-hub -o bin/awesome-hub

echo "cbeans..."
eval pex ${PYTHON} -r =(echo cbeams) -c cbeams -o bin/cbeams

echo "ranger..."
eval pex ${PYTHON} -r =(echo ranger-fm) -c ranger -o bin/ranger

echo "tqdm..."
eval pex ${PYTHON} -r =(echo tqdm) -c tqdm -o bin/tqdm 

echo "termdown..."
eval pex ${PYTHON} -r =(echo "termdown\nsetuptools") -c termdown -o bin/termdown

echo "mycli..."
eval pex ${PYTHON} -r =(echo "mycli\nsetuptools") -c mycli -o bin/mycli

echo "http..."
eval pex ${PYTHON} -r =(echo "httpie\nsetuptools") -c http -o bin/http

echo "gitsome..."
eval pex ${PYTHON} -r =(echo "gitsome") -c gitsome -o bin/gitsome

echo "ytmdl..."
eval pex ${PYTHON} ytmdl setuptools -c ytmdl -o bin/ytmdl

echo "youtube-dl..."
eval pex ${PYTHON} -r =(echo youtube-dl) -c youtube-dl -o bin/youtube-dl

echo "cookiecutter..."
eval pex ${PYTHON} -r =(echo cookiecutter) -c cookiecutter -o bin/cookiecutter

echo "xonsh..."
eval pex ${PYTHON} -r =(echo xonsh) -c xonsh -o bin/xonsh

echo "litecli..."
eval pex ${PYTHON} -r =(echo "litecli\nsetuptools") -c litecli -o bin/litecli

echo "bpytop..."
eval pex ${PYTHON} -r =(echo "bpytop") -c bpytop -o bin/bpytop

echo "parquet-tools..."
eval pex ${PYTHON} -r =(echo "parquet-tools") -c parquet-tools -o bin/parquet-tools

echo "pgcli..."
eval pex ${PYTHON} -r =(echo "pgcli\nsetuptools") -c pgcli -o bin/pgcli

echo "jellex/jello..."
eval pex ${PYTHON} jellex -c jellex -o bin/jellex
eval pex ${PYTHON} jello -c jello -o bin/jello

