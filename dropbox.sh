#!/bin/bash

# function to install dropbox app on mac
dropboxurl="https://www.dropbox.com/download?plat=mac"

install_dropbox(){
  echo "installing dropbox..."
  uuid_suffix=$(uuidgen)
  echo "downloading..."
  curl -L "${dropboxurl}" > "dropbox-${uuid_suffix}.dmg"
  echo "mounting dmg..."
  # the -W flag causes open to wait for the app to finish opening
  open -W "dropbox-${uuid_suffix}.dmg"
  echo "installing..."
  open -W /Volumes/Dropbox\ Installer/Dropbox.app
  echo "cleaning up..."
  umount /Volumes/Dropbox\ Installer
  rm "dropbox-${uuid_suffix}.dmg"
}
