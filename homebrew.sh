# Install homebrew and the apps I'm interested in

install_homebrew(){
  yes \r | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

install_brews(){
  brews="ack bash-completion git htop-osx ruby tree vim wget"

  for brew in $brews; do
    if ! brew list $brew >/dev/null 2>&1; then
      echo "installing $brew..."
      brew install $brew
    else
      echo "$brew already installed. Skipping..."
    fi
  done
}
