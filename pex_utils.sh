#!/usr/bin/env zsh

# -----------------------------------------------------------------------------
#! GESTIÓN DE ERRORES: Salir inmediatamente si un comando falla.
# -----------------------------------------------------------------------------
set -e

# -----------------------------------------------------------------------------
# Configuración
# -----------------------------------------------------------------------------

#! GESTIÓN DE ERRORES: Verificar si 'pex' está instalado.
if ! command -v pex &> /dev/null; then
    echo "❌ Error Crítico: El comando 'pex' no se encuentra en su PATH." >&2
    echo "   Por favor, instale pex para continuar. Sugerencia: python3 -m pip install pex" >&2
    exit 1
fi

# 1. Configuración de la versión de Python
DEFAULT_PYTHON_VERSION="3.10"
if [ -n "$1" ]; then
  PYTHON_VERSION=$1
else
  PYTHON_VERSION=$DEFAULT_PYTHON_VERSION
fi
echo "ℹ️  Usando Python versión: ${PYTHON_VERSION}"
PYTHON_FLAG="--python=python${PYTHON_VERSION}"

# 2. Definición de directorios importantes
STAGING_DIR="bin"
INSTALL_DIR="${HOME}/.local/bin"
BACKUP_DIR="backup_$(date +%F_%H-%M-%S)"

# -----------------------------------------------------------------------------
# Función Principal para Instalar Herramientas
# -----------------------------------------------------------------------------
function instalar_herramienta() {
  local description=$1
  local pex_package=$2
  local executable_name=$3
  
  echo "--- ${description} ---"
  
  local installed_executable_path="${INSTALL_DIR}/${executable_name}"
  
  if [ -f "${installed_executable_path}" ]; then
    echo "🔎 Encontrado '${executable_name}'. Respaldando..."
    mkdir -p "${BACKUP_DIR}"
    cp "${installed_executable_path}" "${BACKUP_DIR}/"
    echo "✅ Respaldo de '${executable_name}' completado en '${BACKUP_DIR}'."
  else
    echo "👍 No se encontró una versión anterior de '${executable_name}'."
  fi
  
  echo "⚙️  Generando nueva versión de '${executable_name}'..."
  
  #! GESTIÓN DE ERRORES: Se comprueba si pex falló y se muestra un mensaje específico.
  # El `||` significa "o". Si el comando pex falla, se ejecuta el bloque entre llaves.
  pex ${PYTHON_FLAG} "${pex_package}" setuptools -c "${executable_name}" -o "${STAGING_DIR}/${executable_name}" || {
    echo "❌ Error Crítico: Falló la generación de '${executable_name}'." >&2
    echo "   El script se detendrá. Revisa el error de pex justo arriba para más detalles." >&2
    exit 1
  }
  
  echo "✨ Nueva versión generada en '${STAGING_DIR}/${executable_name}'."
  echo ""
}

# -----------------------------------------------------------------------------
# Ejecución de la Instalación
# -----------------------------------------------------------------------------
rm -rf "${STAGING_DIR}"
mkdir -p "${STAGING_DIR}"

# ... (la lista de llamadas a `instalar_herramienta` sigue igual)
instalar_herramienta "jellex: json parser" "jellex" "jellex"
instalar_herramienta "jello: json parser" "jello" "jello"
instalar_herramienta "epr: ebook reader" "epr-reader" "epr"
instalar_herramienta "awesome-hub: awesome searcher" "awesome-finder" "awesome-hub"
instalar_herramienta "cbeams: screen clean effect" "cbeams" "cbeams"
instalar_herramienta "ranger: cli filemanager" "ranger-fm" "ranger"
instalar_herramienta "tqdm: progress indicator" "tqdm" "tqdm"
instalar_herramienta "termdown: cli countdown" "termdown" "termdown"
instalar_herramienta "mycli: mysql client" "mycli" "mycli"
instalar_herramienta "http: a better curl" "httpie" "http"
instalar_herramienta "gitsome: git helper" "gitsome" "gitsome"
instalar_herramienta "ytmdl: youtube music downloader" "ytmdl" "ytmdl"
instalar_herramienta "youtube-dl: video downloader" "youtube-dl" "youtube-dl"
instalar_herramienta "cookiecutter: project templates" "cookiecutter" "cookiecutter"
instalar_herramienta "xonsh: pythonesque shell" "xonsh" "xonsh"
instalar_herramienta "litecli: sqlite3 client" "litecli" "litecli"
instalar_herramienta "bpytop: graphical top" "bpytop" "bpytop"
instalar_herramienta "parquet-tools: parquet file tools" "parquet-tools" "parquet-tools"
instalar_herramienta "pgcli: postgresql client" "pgcli" "pgcli"
instalar_herramienta "pygmentize: code highlighter" "pygments" "pygmentize"
instalar_herramienta "legit: git extensions" "legit" "legit"
instalar_herramienta "jc: command output to json" "jc" "jc"
instalar_herramienta "git-filter-repo: rewrite repo history" "git-filter-repo" "git-filter-repo"
instalar_herramienta "tabulate: make ascii tables" "tabulate" "tabulate"
instalar_herramienta "asciinema: record shell sessions" "asciinema" "asciinema"
instalar_herramienta "watchmedo: ejecuta comandos al cambiar archivos" "watchdog" "watchmedo"
instalar_herramienta "visidata: hoja de cálculo para terminal" "visidata" "vd"
instalar_herramienta "datasette: explora datos con una UI web" "datasette" "datasette"
instalar_herramienta "mitmproxy: proxy de red interactivo" "mitmproxy" "mitmproxy"

echo "🎉 Proceso de generación completado con éxito."
echo "Los nuevos ejecutables están en la carpeta '${STAGING_DIR}'."
echo "Las versiones antiguas (si existían) han sido respaldadas en '${BACKUP_DIR}'."
echo "Recuerda mover los nuevos ejecutables a tu PATH para instalarlos."
