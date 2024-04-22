#!/bin/bash
setxkbmap -option "ctrl:nocaps"
light -S 0
xcape -e 'Control_L=Escape' 
greenclip daemon &
