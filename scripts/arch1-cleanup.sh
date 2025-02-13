#!/bin/bash
# Clean Up for Tom Hanks Quiz II
source /scripts/functions.sh
clear
is_super_user
echo -e "Cleaning up..."
userdel -r archuser 2>/dev/null
groupdel archgroup 2>/dev/null
rm -Rf ~/Arch1
rm ~/arch-words
echo -e "Done cleaning up."