#!/bin/bash
cd xfceDocker && docker image build -t xfce:1.4 -t xfce:latest .
cd nginx-xfce && docker image build -t nginx-xfce:1.0 -t nginx-xfce:latest .
cd ../dbeaver-docker && docker image build -t dbeaver-xfce:1.0 -t dbeaver-xfce:latest .
cd ../../xterm-docker && docker image build -t xterm:1.0 -t xterm:latest .
cd ../jupyter-docker && docker image build -t jupyter-extensions:1.0 -t jupyter-extensions:latest .
cd .. && cp gns3_controller.conf /home/${USER}/.config/GNS3/2.2
#cd ../kali && docker image build -t kalilinux:1.2 -t kalilinux:latest .
