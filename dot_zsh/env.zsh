# Setting and editing of environment variables.

# Variables
export CLICOLOR="YES"
export LSCOLORS="exgxdHdHcxaHaHhBhDeaec"
export N_PREFIX="${HOME}/.n"
export N_USE_XZ="true"
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD="true"

# Spaceship settings
export SPACESHIP_PROMPT_ORDER=(
  time           # Time stamps section
    user           # Username section
    dir            # Current directory section
    host           # Hostname section
    git            # Git section (git_branch + git_status)
    package        # Package version
    node           # Node.js section
    bun            # Bun section
    deno           # Deno section
    ruby           # Ruby section
    python         # Python section
    xcode          # Xcode section
    swift          # Swift section
    golang         # Go section
    perl           # Perl section
    php            # PHP section
    rust           # Rust section
    kotlin         # Kotlin section
    java           # Java section
    julia          # Julia section
    docker         # Docker section
    docker_compose # Docker section
    aws            # Amazon Web Services section
    gcloud         # Google Cloud Platform section
    azure          # Azure section
    conda          # conda virtualenv section
    vlang          # V section
    zig            # Zig section
    kubectl        # Kubectl context section
    terraform      # Terraform workspace section
    pulumi         # Pulumi stack section
    nix_shell      # Nix shell
    exec_time      # Execution time
    async          # Async jobs indicator
    line_sep       # Line break
    battery        # Battery level and status
    jobs           # Background jobs indicator
    exit_code      # Exit code section
    sudo           # Sudo indicator
    char           # Prompt character
)

export SPACESHIP_ANSIBLE_SHOW=false
export SPACESHIP_CRYSTAL_SHOW=false
export SPACESHIP_DART_SHOW=false
export SPACESHIP_DOTNET_SHOW=false
export SPACESHIP_ELIXIR_SHOW=false
export SPACESHIP_ELM_SHOW=false
export SPACESHIP_ERLANG_SHOW=false
export SPACESHIP_GNU_SCREEN_SHOW=false
export SPACESHIP_HASKELL_SHOW=false
export SPACESHIP_JULIA_SHOW=false
export SPACESHIP_HG_SHOW=false
export SPACESHIP_SCALA_SHOW=false

export SPACESHIP_TIME_SHOW=true
export SPACESHIP_CONDA_SHOW=true
export SPACESHIP_BATTERY_THRESHOLD=50
export SPACESHIP_DOCKER_CONTEXT_SHOW=true
export SPACESHIP_EXIT_CODE_SHOW=true

export GEM_HOME="${HOME}/.gem"

# Path
export CHEZMOIPATH="${HOME}/.local/bin"
export NPMPATH="${HOME}/.npm-global/bin"
export NODENPATH="${N_PREFIX}/bin"
export GOBINPATH="$(go env GOPATH)/bin"
export CARGOPATH="${HOME}/.cargo/bin"
export PKGPATH="/opt/pkg/bin:/opt/pkg/sbin:/opt/pkg/gnu/bin"
export PYPATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${HOME}/Library/Python/3.10/bin:${HOME}/.local/bin"
export GEMBINPATH="${GEM_HOME}/bin"

export PATH="$PKGPATH:$NPMPATH:$NODENPATH:$GOBINPATH:$CARGOPATH:$PYPATH:$GEMBINPATH:$PATH"

typeset -U PATH # Remove duplicates in $PATH
