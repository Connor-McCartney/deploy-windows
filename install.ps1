# install scoop
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

scoop bucket add extras
scoop install git python fzf fd bat neovim gcc clangd make cmake komorebi autohotkey gdb

git clone https://github.com/connor-mccartney/deploy-arch-hyprland
mv .\deploy-arch-hyprland\dotfiles\.config\nvim\ C:\Users\crm36\AppData\Local\
mv .\deploy-arch-hyprland\dotfiles\.wallpapers\ ~

wget -o $profile https://raw.githubusercontent.com/Connor-McCartney/deploy-windows/refs/heads/main/profile.ps1
