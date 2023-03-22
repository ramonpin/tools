#!/usr/bin/env zsh
mkdir -p bin
PYTHON="--python=python3.8"

echo "jellex/jello: json parsers with python syntax"
pex ${PYTHON} jellex setuptools -c jellex -o bin/jellex
pex ${PYTHON} jello setuptools -c jello -o bin/jello

echo "epr: ebook reader on cli"
pex ${PYTHON} epr-reader setuptools -c epr -o bin/epr

echo "awesome-hub: tool to search awesome resources"
pex ${PYTHON} awesome-finder setuptools -c awesome-hub -o bin/awesome-hub

echo "cbeams: screen clean with effects"
pex ${PYTHON} cbeams setuptools -c cbeams -o bin/cbeams

echo "ranger: best cli filemanager"
pex ${PYTHON} ranger-fm setuptools -c ranger -o bin/ranger

echo "tqdm: progress indicator for cli commands"
pex ${PYTHON} tqdm setuptools -c tqdm -o bin/tqdm 

echo "termdown: cli countdown timer"
pex ${PYTHON} termdown setuptools -c termdown -o bin/termdown

echo "mycli: rich mysql client on the terminal"
pex ${PYTHON} mycli setuptools -c mycli -o bin/mycli

echo "http: a better curl"
pex ${PYTHON} httpie setuptools -c http -o bin/http

echo "gitsome: git usage helper for bash"
pex ${PYTHON} gitsome setuptools -c gitsome -o bin/gitsome

echo "ytmdl: youtube music downloader"
pex ${PYTHON} ytmdl setuptools -c ytmdl -o bin/ytmdl

echo "youtube-dl: youtube video downloader"
pex ${PYTHON} youtube-dl setuptools -c youtube-dl -o bin/youtube-dl

echo "cookiecutter: project templates"
pex ${PYTHON} cookiecutter setuptools -c cookiecutter -o bin/cookiecutter

echo "xonsh: pythonesque shell"
pex ${PYTHON} xonsh setuptools -c xonsh -o bin/xonsh

echo "litecli: rich sqlite3 cli for the terminal"
pex ${PYTHON} litecli setuptools -c litecli -o bin/litecli

echo "bpytop: advanced graphical top for the terminal"
pex ${PYTHON} bpytop setuptools -c bpytop -o bin/bpytop

echo "parquet-tools: tools to interact with parquet files"
pex ${PYTHON} parquet-tools setuptools -c parquet-tools -o bin/parquet-tools

echo "pgcli: rich postgresql cli for the terminal"
pex ${PYTHON} pgcli setuptools -c pgcli -o bin/pgcli

echo "pygmentize: source code highlighter"
pex ${PYTHON} pygments setuptools -c pygmentize -o bin/pygmentize

echo "legit: best git extensions"
pex legit setuptools -c legit -o bin/legit

echo "jc: command outputs to json"
pex jc setuptools -c jc -o bin/jc

echo "git-filter-repo: official command to rewrite repo history"
pex git-filter-repo setuptools -c git-filter-repo -o bin/git-filter-repo
