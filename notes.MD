# pacman update  
sudo pacman -Syu

# Aur update 
yay -Syu

# force rebuild packages
yay -S --rebuildall $(pacman -Qmq)

# list foder size
du -ah --max-depth 1
