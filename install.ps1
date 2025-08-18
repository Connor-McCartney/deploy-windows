# install scoop
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

scoop install git python fzf neovim gcc clangd make cmake

git clone https://github.com/connor-mccartney/deploy-arch-hyprland
mv .\deploy-arch-hyprland\dotfiles\.config\nvim\ C:\Users\crm36\AppData\Local\
