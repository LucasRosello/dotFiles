#!/bin/bash

echo -ne '\n' | ssh-keygen -t rsa -b 4096 -C "l.martin.rosello@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

KEY=$(cat ~/.ssh/id_rsa.pub)
FECHA=$(date)

curl -u "l.martin.rosello@gmail.com" --data '{"title":"'"$FECHA"'","key":"'"$KEY"'"}' https://api.github.com/user/keys

git config --global user.email "l.martin.rosello@gmail.com"

exit