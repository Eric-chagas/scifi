#!/bin/bash

##########################################################################
#                                                                        
# ncmpcppPolybar.sh - Inicia o MPD caso não esteja em execução, e lança o
# player de música ncmpcpp. Desenvolvido para integração do player com a 
# polybar.     
#                                                                        
# Autor: Eric Chagas de Oliveira - eric_chagaso@protonmail.com            
# 07/03/2021                                                             
#                                                                        
##########################################################################

ps aux | grep mpd | head -1 | grep grep

if [ $? -eq 0 ]
then
    mpd &
fi

alacritty --command ncmpcpp &
