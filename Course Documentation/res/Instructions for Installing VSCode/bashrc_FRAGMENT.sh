if [ ! -z "$MSVSCODE" ]; then
  unset MSVSCODE
  source ~/.bashrc
  source ~/.profile
  cd “$workspaceFolder”
fi
