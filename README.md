# Tools
Este repositorio es una recopilación de herramientas interesantes. Principalmente se trata de herramientas por linea de comando para linux.

## Tratamiento de ficheros

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

## Git

### tig
Interfaz modo texto para realizar tareas de inspección y mantenimiento de repositorios git locales.

* URL: https://jonas.github.io/tig/

### Le.git
Añade algunos comandos extra a git de modo que sea más sencillo realizar tareas como la sincronización upstream y el cambio entre ramas de forma 'limpia'.

* URL: http://www.git-legit.org/

## Plain text accounting
Estas herramientas están relacionadas con la contabilidad de doble entrada. Todas ellas se basan en realizar la entrada de información usando ficheros de texto plano.

URL: http://plaintextaccounting.org/

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

## Shells

### Fish Shell
Shell con autocompletado 'al vuelo'. Según escribes un comando te ofrece sugerencias según tu historial de comandos.

* URL: https://fishshell.com/

## Python Libraries

### prompt-toolkit
Librería python que permite crear REPL complejos con histórico, autocompletado, autosugerencias basadas en el histórico, coloreado sintáctico, etc...

* URL: https://github.com/jonathanslenders/python-prompt-toolkit
* DOC: https://python-prompt-toolkit.readthedocs.io/en/stable/A
* VIDEO: [Awesome Command Line Tools PyCon 2007](https://www.youtube.com/watch?v=hJhZhLg3obk)

### meza
Librería para el tratamiento de ficheros tabulares en múltiples formatos (csv, xml, xlsx, excel, etc...) El objetivo es ser una alternativa a pandas cuando no son necesarias las características de esta librería. Meza es más ligera a la hora de instalarla y de usarla.

* URL: https://github.com/reubano/meza
* VIDEO: [Functional efficient data processing](https://www.youtube.com/watch?v=9kDUTJahXBM&index=3&list=PL5fKnSm4M_VWxdWRwNuXSxQ3TsYFG4C_l)

## IDEs

### Spacemacs
Una reconfiguración de Jemacs25 ideada para simplificar a los usuarios de vim el uso de este editor. Se basa en EvilMode aunque también puede usarse en modo nativo.

* URL: http://spacemacs.org/
* VIDEO: [Spacemacs - From First Install to Clojure programming](https://www.youtube.com/watch?v=Uuwg-069NYE)
* VIDEO: [How to Configure Spacemacs](https://www.youtube.com/watch?v=N6xN8qLFFaQ)

### Nightlight
Un IDE integrado en tu proyecto leiningen o boot.

* URL: https://sekao.net/nightlight/ 
* VIDEO: [Writing clojure at runtime with Nightlight](https://www.youtube.com/watch?v=EG5BtBEow24)

