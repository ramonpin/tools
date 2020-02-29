# Tools
Este repositorio es una recopilación de herramientas interesantes. Principalmente se trata de herramientas por linea de comando para linux.

## Tratamiento de ficheros

### Datamash
Herramienta genérica para el tratamiento de ficheros de texto que contienen datos delimitados.

* URL: https://www.gnu.org/software/datamash/

### CSVKit
Herramientas para el tratamiento de ficheros en formato CSV y similares. Permiten realizar consultas, extracciones de datos, reformateados y estadísticas sobre este tipo de fichero.

* URL: https://github.com/wireservice/csvkit
* DOC: https://csvkit.readthedocs.io/en/1.0.2/

### jq
Herramienta para trabajar con ficheros en formato JSON. Nos permite extraer y reformatear información de un JSON en otro JSON.

* URL: https://stedolan.github.io/jq/

### q - Text as Data
Permite realizar consultas SQL sobre ficheros de texto en formato CSV y similiares. También puede combinarse con la salida de otros comandos para realizar tratamientos complejos de la información obtenida.

* URL: https://harelba.github.io/q/

### Miller
Miller es como awk, sed, cut, join y sort para CSV, TSV y JSON tabular.

* URL: https://github.com/johnkerl/miller
* DOC: http://johnkerl.org/miller/doc/

### Drake
Herramienta para la creación de pipeline de tratamiento de datos con bash. Drake es 'Make for data'.

* URL: https://github.com/Factual/drake

### feedgnuplot
Herramienta para crear gráficos con gnuplot. Permite definir el gráfico mediante parámetros de la línea de comando en lugar de tener que crear un script.
También permite leer los datos desde la entrada estandard en lugar de requerir un fichero y puede hacer streaminig de los datos.

* URL: https://github.com/dkogan/feedgnuplot

## Git

### tig
Interfaz modo texto para realizar tareas de inspección y mantenimiento de repositorios git locales.

* URL: https://jonas.github.io/tig/

### Lazygit
Otra muy buena interfaz en modo texto para git similar a tig.

* URL: https://github.com/jesseduffield/lazygit

### Le.git
Añade algunos comandos extra a git de modo que sea más sencillo realizar tareas como la sincronización upstream y el cambio entre ramas de forma 'limpia'.

* URL: http://www.git-legit.org/

### gas
Este es un gestor de authors para git. Con el se simplifica el uso de múltiples usuarios en una misma máquina a la hora de hacer commits en los
repositorios. Se trata de una gema de ruby así que es necesario tener este interprete instalado.

    $> gem install gas

* URL: https://github.com/walle/gas

### Extra-commands
Colección de scripts para facilitar ciertas tareas complejas. Contiene algunas joyas como 'move-commits' o 'change-author'.

* URL: https://github.com/unixorn/git-extra-commands

## Plain text accounting
Estas herramientas están relacionadas con la contabilidad de doble entrada. Todas ellas se basan en realizar la entrada de información usando ficheros de texto plano.

* URL: http://plaintextaccounting.org/

### hledger
Clon de ledger hecho en haskell.

* URL: http://hledger.org/
* VIDEO: (Hands-on with hledger)[https://www.youtube.com/watch?v=H_CdGzLbc7A]

### beancount
Clon de ledger hecho en python.

* URL: http://furius.ca/beancount/

### Fava
Interfaz gráfica para beancount.

* URL: https://github.com/beancount/fava

## Bases de datos

### MyCLI
Es una alternativa a la interfaz de linea de comandos de MariaDB y MySQL (por favor usa siempre la primera). Tiene soporte para el autocompletado de comandos SQL con referencia a los objetos presentes en la base de datos actual.

* URL: http://mycli.net/

### PGCLI
Es una alterna a la interfaz de linea de comandos de Postgres con el mismo tipo de soporte para el autocompletado de comandos que MyCLI.

* URL: https://www.pgcli.com/

### Flyway
Herramienta de versionado y migración de bases de datos.

* URL: https://flywaydb.org/

## Shell

### Fish Shell
Shell con autocompletado 'al vuelo'. Según escribes un comando te ofrece sugerencias según tu historial de comandos.

* URL: https://fishshell.com/

### fzf
Es un comando para implementar busquedas difusas en tus scripts. En particular viene preparado para integrarse en el shell mediante el atajo de teclado ctrl-T y permitir búsquedas en la carpeta local.

* URL: https://github.com/junegunn/fzf
* URL: https://mike.place/2017/fzf-fd/
* TIP: https://github.com/junegunn/fzf/wiki/Examples-(completion)

### fd
Es una mejora sobre el comando find. Ideal para combinarlo con fzf en la creación de buscadores de ficheros.

* URL: https://github.com/sharkdp/fd
* URL: https://mike.place/2017/fzf-fd/

### silver sercher - ag
Es otro buscador de archivos pensado para tener el mejor rendimiento posible. Es similar a grep y ack pero más rápido en ejecución. Está escrito en C y se puede instalar desde aptitude con:

    sudo aptitude install silversearcher-ag

* URL: https://github.com/ggreer/the_silver_searcher

### ack3
Sustituto de grep escrito en perl y mucho más rápido.

* URL: https://beyondgrep.com/

### sshfs
Es un filesystem FUSE que permite montar directorios remotos por SSH a nuestra máquina local. Ideal para editar con herramientas gráficas
ficheros que se encuentran en máquinas servidoras.

    sudo aptitude install sshfs

Un ejemplo de uso:

    mkdir ~/remotes/servidor1
    sshfs -o IdentityFile=~/.ssh/id_rsa user@servidor1:/a/given/path ~/remotes/servidor1

* URL: https://github.com/libfuse/sshfs

### rclone
Es un programa que permite hacer rsync a multiples servicios de almacenamiento en nube e incluso montarlos en
local con FUSE. Algunos de los servicios soportados son googlee drive, dropbox, mega.nz...

* URL: https://rclone.org/

### mole
Es un programa para simplificaficar la creación de tuneles ssh. 

* URL: https://davrodpin.github.io/mole/

### entr
Con entr es posible planificar la ejecución de comandos arbitrarios cuando uno o varios ficheros cambian.

    sudo aptitude install entr


* URL: http://entrproject.org/
* URL: https://github.com/joereynolds/entree

### pass
El gestor de passwords de Unix basado en gpg. Puede ser instalado desde el gestor de paquetes de la distribución
pero para obtener la última versión estable es preferible hacerlo manualmente desde el repositorio.

Una vez descargado el mismo puede ejecutarse:

    $> sudo PREFIX=/usr/local make install

* URL: https://www.passwordstore.org/

### drip
Lazador de procesos java alternativo. Precalienta una JVM para cada proceso que se lanza de modo que las siguientes
ejecuciones son arrancan mucho más rápido. Ideal para herramientas por línea de comando. Se utiliza por ejemplo con
Drake.

* URL: https://github.com/ninjudd/drip


### run-one
El comando 'run-one' es un wrapper que permite garantizar que solo se ejecuta simultáneamente una instancia de un
determinado proceso y argumentos.

Tiene algunas alternativas utiles como 'run-this-one', 'run-one-constantly', 'keep-one-running', 'run-one-until-success' y
'run-one-until-failure'.

* URL: http://manpages.ubuntu.com/manpages/xenial/man1/run-one.1.html

### pypager
Un pager (estilo less) muy potente e implementado en python.

* URL: https://github.com/prompt-toolkit/pypager

### ptrepl
Permite utilizar cualquier comando cli como si fuera una linea de comandos con autocompletado. Por ejemplo `ptrepl git` simplifica
el uso de git.

* URL: https://github.com/imomaliev/ptrepl

### newsboat
Agregador RSS para la línea de comando. Permite acceder a feeds en paginas de noticias, canales de youtube, subreddits, etc...

* URL: https://newsboat.org/

### colorls
Versión avanza de ls que utiliza icons y degradados de color para representar los tipos y antiguedad de los ficheros.

* URL: https://github.com/athityakumar/colorls

### nerd-fonts
Colección de fuentes patcheadas para terminales linux que incluyen los iconos necesarios para el prompt powerline y otras utilidades como colorls.

* URL: https://github.com/ryanoasis/nerd-fonts

### glances
Sustituto de htop que crea un dashboard sobre el estado del sistema. Permite, mediante un plugin, monitorizar también los contenedores docker en ejecución.

* URL: https://nicolargo.github.io/glances/
* DOC: https://glances.readthedocs.io/en/stable/

### pydf
Versión mejorada del comando df que representa la información de forma más visual.

* URL: https://github.com/k4rtik/pydf-pypi

### trash-CLI
Sustituto del comando rm que integra el borrado de ficheros en el shell con la papelera del desktop. Permite también listar, rescuperar y borrar los contenidos de la papelera desde la línea de comandos.

* URL: https://github.com/andreafrancia/trash-cli

NOTA: Lo instalé usando 'pip3 install --user trash-cli'

## Python Libraries

### pex
Herramienta que permite crear un empaquetado autoejecutable a partir de un entorno virtual o
un conjunto de paquetes instalados en local.

* URL: https://github.com/pantsbuild/pex

### prompt-toolkit
Librería python que permite crear REPL complejos con histórico, autocompletado, autosugerencias basadas en el histórico, coloreado sintáctico, etc...

* URL: https://github.com/jonathanslenders/python-prompt-toolkit
* DOC: https://python-prompt-toolkit.readthedocs.io/en/stable/A
* VIDEO: [Awesome Command Line Tools PyCon 2017](https://www.youtube.com/watch?v=hJhZhLg3obk)

### meza
Librería para el tratamiento de ficheros tabulares en múltiples formatos (csv, xml, xlsx, excel, etc...) El objetivo es ser una alternativa a pandas cuando no son necesarias las características de esta librería. Meza es más ligera a la hora de instalarla y de usarla.

* URL: https://github.com/reubano/meza
* VIDEO: [Functional efficient data processing PyCon 2017](https://www.youtube.com/watch?v=9kDUTJahXBM&index=3&list=PL5fKnSm4M_VWxdWRwNuXSxQ3TsYFG4C_l)

### RPLY
Parser generator en python puro y pensdo para usar con RPython.

* URL: https://rply.readthedocs.io/en/latest/
* VIDEO: [Fastest FizzBuzz in the West Pycon 2017](https://www.youtube.com/watch?v=ApgUrtCrmV8&t=14s)

### RPython
Es un framework para dar soporte a la implementación de lenguajes dinámicos usando Python como base. Hace especial
énfasis en la separación entre la definición del lenguaje y su implementación.

* URL: https://rpython.readthedocs.io/en/latest/
* VIDEO: [Fastest FizzBuzz in the West PyCon2017](https://www.youtube.com/watch?v=ApgUrtCrmV8&t=14s)

### Logzero
Librería de logging para python muy completa.

* URL: https://logzero.readthedocs.io/en/latest/
* URL: https://opensource.com/article/20/2/logzero-python

## IDEs

### Spacemacs
Una reconfiguración de emacs25 ideada para simplificar a los usuarios de vim el uso de este editor. Se basa en EvilMode aunque también puede usarse en modo nativo.

* URL: http://spacemacs.org/
* VIDEO: [Spacemacs - From First Install to Clojure programming](https://www.youtube.com/watch?v=Uuwg-069NYE)
* VIDEO: [How to Configure Spacemacs](https://www.youtube.com/watch?v=N6xN8qLFFaQ)

### Nightlight
Un IDE integrado en tu proyecto leiningen o boot.

* URL: https://sekao.net/nightlight/
* VIDEO: [Writing clojure at runtime with Nightlight](https://www.youtube.com/watch?v=EG5BtBEow24)

### nvim
Un mejor vim. Más rápido y compatible con el vim tradicional.

* URL: https://salt.bountysource.com/teams/neovim

### SpaceVim
Spacevim es un conjunto de plugins y un sistema de configuración basado en layers para vim. Es similar al Spacemacs.

* URL: https://spacevim.org/

## PDF/Slide/Publication Tools

### pandoc
Pandoc es el transpilador de documentos universal. Es capaz de transformar documentos de un tipo en
otro. Es especialmente útil para la conversión de markdown a pdf o docx.

* URL: http://pandoc.org/

### eisvogel pandoc pdf template
El mejor template para la creación de libros y handouts a usando de markdown y pandoc.

* URL: https://github.com/Wandmalfarbe/pandoc-latex-template

### pdfbook
Esta utilidad del sistema operativo (instalable mediante aptitude) permite convertir un documento pdf
a una cara en un documento pdf en formato 2up listo para su impresión.

* URL: http://manpages.ubuntu.com/manpages/zesty/man1/pdfbook.1.html

### vegetables
Convierte docmentos en formato markdown en slides HTML.

* URL: https://partageit.github.io/vegetables/

### markdown-to-slides
Conversor simple de documentos markdown a slides HTML.

* URL: https://github.com/partageit/markdown-to-slides

### jekyll
Creación de blogs como sitios estáticos a partir de ficheros markdown. Este es el sistema que se utiliza
para las 'github pages'. Está implementado en ruby así que necesitaremos un interprete del mismo y su
gestor de paquetes (gem). Es recomendable utilizar una herramienta de gestión de entornos ruby como rbenv.

* URL: https://jekyllrb.com/

### mkdocs
Un projecto similar a jekyll pero para la creación de páginas de documentación. Esta herramienta está implementada
en python. Será necesario tener un interprete de este lenguaje y su gestor de paquetes (pip). Es recomendable utilizar
un entorno virtual con virtualenvs o venv.

* URL: https://www.mkdocs.org/

## appImages

### dockstation
Interfaz gráfica para la administración de contenedores docker en local y remoto.

* URL: https://dockstation.io/

## Gestión de entornos / paquetes

### nix
Gestor de paquetes y entornos de software para linux. Permite instalar versiones más recientes de algunas herramientas como por
ejemplo GIT.

* URL: https://nixos.org/nix/about.html

### snap
Otro gestor de paquetes de software para linux. Se parece mucho a chocolatey.

* URL: https://snapcraft.io/

### appimages
Repositorio de aplicaciones autocontenidas para linux. También extiste una herramienta para crear este tipo de
aplicaciones.

* URL: https://appimage.org/

## Templating

### cookie
Applicación muy sencilla para crear plantillas de fichero o proyecto y luego crear esos tipos de elemento a partir de las mismas.

* URL: https://github.com/bbugyi200/cookie

## Filemanagers

### ranger
Completo navegador de ficheros por línea de comando.

* URL: https://ranger.github.io/
* URL: https://github.com/ranger/ranger

## Gestión del tiempo

### timetrap
CLI time tracker escrito en ruby.

* URL: https://github.com/samg/timetrap

## Awesome lists
Compendio de mis awesome lists favoritas.

### Awesome
Recopilación de las mejores awesome-lists de github.

* URL: https://github.com/sindresorhus/awesome

### Terminals are Sexy
Listado de cosas alucinantes para tu terminal.

* URL: https://terminalsare.sexy/

### Awesome python Apps
Listado de las mejores aplicaciones escritas en python.

* URL: https://github.com/mahmoud/awesome-python-applications

### Awesome python (a secas)
Listado de herramientas, librerías y aplciaciones en python.

* URL: https://github.com/vinta/awesome-python

## Presentaciones
Metodos alternativos de realizar presentaciones.

### markdownd presentations
Presentaciones en el terminal usando markdown como lenguage de composición.

* URL: https://github.com/visit1985/mdp

## Escritorio

### screenkey
Applicación para mostrar en pantalla las teclas pulsadas. Útil para charlas y screencasts.

* URL: https://www.thregr.org/~wavexx/software/screenkey/

### synapse
Aplicación para lanzar programas sin dejar el teclado.

* URL: https://launchpad.net/synapse-project

### flameshot
Aplicación para tomar pantallazos con las herramientas de edición y publicación incorporadas.

* URL: https://flameshot.js.org/

