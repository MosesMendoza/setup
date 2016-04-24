#!/bin/bash

# function to install dropbox app on mac
dropboxurl="https://www.dropbox.com/download?plat=mac"

install_dropbox(){
  echo "installing dropbox..."
  uuid_suffix=$(uuidgen)
  echo "downloading..."
  curl -L "${dropboxurl}" > "dropbox-${uuid_suffix}.dmg"
  echo "mounting dmg..."
  open "dropbox-${uuid_suffix}.dmg"
  echo "looking for installer"
  if [ -e /Volumes/Dropbox\ Installer/Dropbox.app ] ; then
    echo "file found"
    echo "installing..."
    open /Volumes/Dropbox\ Installer/Dropbox.app
  else
    echo "file not found"
  fi
  echo "cleaning up..."
  umount /Volumes/Dropbox\ Installer
  rm "dropbox-${uuid_suffix}.dmg"
}
