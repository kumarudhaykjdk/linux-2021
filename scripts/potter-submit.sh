#!/bin/bash
# Potter Assignment

source /scripts/functions.sh

clear
is_super_user
student_info Potter Lab

tree -pug ~/Hogwarts/ | tee -a $outfile
blank_line
# Question 1

check_permissions 1 /home/linuxuser/Hogwarts/Slytherin/Snape/potions.txt -rw-rw----
check_owner 1 /home/linuxuser/Hogwarts/Slytherin/Snape/potions.txt snape
check_group 1 /home/linuxuser/Hogwarts/Slytherin/Snape/potions.txt slytherin
blank_line

# Question 2

check_owner 2 /home/linuxuser/Hogwarts/Slytherin/Snape snape
check_owner 2 /home/linuxuser/Hogwarts/Slytherin/Draco draco
check_owner 2 /home/linuxuser/Hogwarts/Slytherin/Draco/hairproduct.txt draco
check_owner 2 /home/linuxuser/Hogwarts/Slytherin/Lucius lucius
check_owner 2 /home/linuxuser/Hogwarts/Slytherin/Lucius/hairgel.txt lucius
blank_line

# Question 3

check_permissions 3 /home/linuxuser/Hogwarts/Gryffindor/Ron/OldClothes.txt -rw-rw----
check_owner 3 /home/linuxuser/Hogwarts/Gryffindor/Ron/OldClothes.txt ron
check_group 3 /home/linuxuser/Hogwarts/Gryffindor/Ron/OldClothes.txt godric
blank_line

# Question 4

check_existence 4 /home/linuxuser/Hogwarts/Gryffindor/Harry/darkarts d
check_permissions 4 /home/linuxuser/Hogwarts/Gryffindor/Harry/darkarts drwx------
check_owner 4 /home/linuxuser/Hogwarts/Gryffindor/Harry/darkarts harry
check_group 4 /home/linuxuser/Hogwarts/Gryffindor/Harry/darkarts harry
blank_line

# Question 5

check_existence 5 /home/linuxuser/Hogwarts/dumbledoreisNOTdead.txt f
blank_line

# Question 6

check_permissions 6 /home/linuxuser/Hogwarts/Slytherin/Lucius/hairgel.txt -rw-rw----
check_owner 6 /home/linuxuser/Hogwarts/Slytherin/Lucius/hairgel.txt lucius
check_group 6 /home/linuxuser/Hogwarts/Slytherin/Lucius/hairgel.txt muggles
blank_line


# Question 8

echo -e "Contents of /home/linuxuser/assignment1" | tee -a $outfile
tree /home/linuxuser/assignment1 | tee -a $outfile

# Submit the work
mail_out Potter Lab CET1025
