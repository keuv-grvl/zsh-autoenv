# ln -s /home/kevin.gravouil/.opt/zsh-autoenv/.autoenv_leave.zsh .

if [[ $CONDA_DEFAULT_ENV != "base" ]] ; then
    conda deactivate
fi
