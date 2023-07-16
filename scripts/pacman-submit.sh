#!/bin/bash
source /scripts/functions.sh
clear
is_super_user
student_info PacMan Lab

blank_line
echo -e "All ghosts should be in /home/linuxuser/quarantine" | tee -a $outfile
blank_line
check_existence 1 /home/linuxuser/quarantine/ d
blank_line
check_existence 1 /home/linuxuser/quarantine/8linky.txt f
check_existence 1 /home/linuxuser/quarantine/PiNkY.txt f
check_existence 1 /home/linuxuser/quarantine/sue.txt f
check_existence 1 /home/linuxuser/quarantine/CLYDE.txt f
check_existence 1 /home/linuxuser/quarantine/funky.txt f
check_existence 1 /home/linuxuser/quarantine/1nky.txt f
check_existence 1 /home/linuxuser/quarantine/sp00ky.txt f
blank_line

mail_out PacMan Lab CET1025