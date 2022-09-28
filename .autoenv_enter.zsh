# ln -s /home/kevin.gravouil/.opt/zsh-autoenv/.autoenv_enter.zsh .

if test -f .autoenv_conda_env_name ; then
    TARGET_CONDA_ENV="$(cat .autoenv_conda_env_name)"
    if [[ $TARGET_CONDA_ENV != $CONDA_DEFAULT_ENV ]]; then
        conda activate "$TARGET_CONDA_ENV" 2>&1 2> /dev/null
    fi
else
    CUR_DIR=$(basename $(pwd))
    conda activate "$CUR_DIR-dev" 2> /dev/null  \
    || conda activate "$CUR_DIR-env" 2> /dev/null  \
    || echo "❌ no conda env found using names '"$CUR_DIR"[-dev|-env]'.\nWrite the env name to activate to a '.autoenv_conda_env_name' file"
fi
