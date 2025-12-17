mkdir ~/t

# install scoop
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

scoop install git # required to install buckets
scoop bucket add extras
scoop install python fzf fd bat neovim gcc clangd make cmake autohotkey gdb which glazewm zebar nodejs

git clone https://github.com/connor-mccartney/deploy-arch-hyprland
mv .\deploy-arch-hyprland\dotfiles\.config\nvim\ C:\Users\crm36\AppData\Local\
mv .\deploy-arch-hyprland\dotfiles\.wallpapers\ ~

wget -o $profile https://raw.githubusercontent.com/Connor-McCartney/deploy-windows/refs/heads/main/profile.ps1

# edit python path in ~\AppData\Local\nvim\lsp\basedpyright.lua


mkdir ~\AppData\Roaming\alacritty
wget -o ~\remap.ahk https://raw.githubusercontent.com/Connor-McCartney/deploy-windows/refs/heads/main/remap.ahk


