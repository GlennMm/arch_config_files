#! /usr/bin/sh

for package in $(pacman -Qq | rg $1 ) 
do
  echo $package
  $(echo 'Y' | yay -R $package)
done

echo 'Done...'

