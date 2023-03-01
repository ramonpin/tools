#!/usr/bin/env zsh
mkdir -p bin
PYTHON="--python=python3.8"

echo "jellex/jello..."
pex ${PYTHON} jellex setuptools -c jellex -o bin/jellex
pex ${PYTHON} jello setuptools -c jello -o bin/jello

echo "epr..."
pex ${PYTHON} epr-reader setuptools -c epr -o bin/epr

echo "awesome-hub..."
pex ${PYTHON} awesome-finder setuptools -c awesome-hub -o bin/awesome-hub

echo "cbeans..."
pex ${PYTHON} cbeams setuptools -c cbeams -o bin/cbeams

echo "ranger..."
pex ${PYTHON} ranger-fm setuptools -c ranger -o bin/ranger

echo "tqdm..."
pex ${PYTHON} tqdm setuptools -c tqdm -o bin/tqdm 

echo "termdown..."
pex ${PYTHON} termdown setuptools -c termdown -o bin/termdown

echo "mycli..."
pex ${PYTHON} mycli setuptools -c mycli -o bin/mycli

echo "http..."
pex ${PYTHON} httpie setuptools -c http -o bin/http

echo "gitsome..."
pex ${PYTHON} gitsome setuptools -c gitsome -o bin/gitsome

echo "ytmdl..."
pex ${PYTHON} ytmdl setuptools -c ytmdl -o bin/ytmdl

echo "youtube-dl..."
pex ${PYTHON} youtube-dl setuptools -c youtube-dl -o bin/youtube-dl

echo "cookiecutter..."
pex ${PYTHON} cookiecutter setuptools -c cookiecutter -o bin/cookiecutter

echo "xonsh..."
pex ${PYTHON} xonsh setuptools -c xonsh -o bin/xonsh

echo "litecli..."
pex ${PYTHON} litecli setuptools -c litecli -o bin/litecli

echo "bpytop..."
pex ${PYTHON} bpytop setuptools -c bpytop -o bin/bpytop

echo "parquet-tools..."
pex ${PYTHON} parquet-tools setuptools -c parquet-tools -o bin/parquet-tools

echo "pgcli..."
pex ${PYTHON} pgcli setuptools -c pgcli -o bin/pgcli

echo "pygmentize"
pex ${PYTHON} pygments setuptools -c pygmentize -o bin/pygmentize

echo "legit"
pex legit setuptools -c legit -o bin/legit

echo "jc: command outputs to json"
pex jc setuptools -c jc -o bin/jc
