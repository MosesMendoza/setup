function copy_dotfiles(){
  for app in bash git iterm vim ; do
    pushd /Users/moses/Dropbox/setup/$app
      cp -R .* /Users/moses/
    popd
  done
}


