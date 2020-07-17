# sudo wget https://raw.githubusercontent.com/LucasRosello/dotFiles/master/dotFiles.sh && sudo chmod 777 ./dotFiles.sh && sudo ./dotFiles.sh

# antes instalar wget
# apt install software-properties-common apt-transport-https wget -y



#!/bin/bash
# -*- ENCODING: UTF-8 -*-

#Visual Code
snap install code --classic
code ./dotFiles.sh --user-data-dir
