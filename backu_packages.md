### back up installed to a text file 
pacman -S --print-format %n --list | grep installed | cut -d ' ' -f 2 >> hp_packages.txt

### restore packages backup
pacman -S $(cat hp_packages.txt)


