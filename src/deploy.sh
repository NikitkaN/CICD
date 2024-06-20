#!/bin/bash

eval `ssh-agent -s`
ssh-add /home/id_rsa

chmod +x cat/s21_cat grep/s21_grep
scp cat/s21_cat grep/s21_grep lowellda@172.24.116.8:/usr/local/bin

