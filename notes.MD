# pacman update  
sudo pacman -Syu

# Aur update 
yay -Syu

# force rebuild packages
yay -S --rebuildall $(pacman -Qmq)

# list foder size
du -ah --max-depth 1

# List and sort the folders
du -ah --max-depth 1 | sort -hr|less


# make terminus font on tty
edit this file 
/etc/default/console-setup
add these lines
CHARMAP="UTF-8"
CODESET="Lat7"
FONTFACE="Terminus"
FONTSIZE="28x14"
for instant result 
setfont /usr/share/consolefonts/Lat7-Terminus28x14.psf
