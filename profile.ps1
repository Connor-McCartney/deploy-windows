if ($Host.Name -ne 'ConsoleHost') {return}
cd ~/Documents


Set-Alias l ls
Set-Alias c cd
#Set-Alias v neovide
Set-Alias v nvim


function fzf {
    return & fzf.exe --bind "ctrl-o:down,tab:accept" --preview "bat --color=always {1}"
}

function cc {
    cd ~
    $env:FZF_DEFAULT_COMMAND = "fd --type d --strip-cwd-prefix --hidden --follow --exclude .git"
    $selection = fzf
    cd $selection
}

function vv {
    cd ~
    $env:FZF_DEFAULT_COMMAND = "fd --type f --strip-cwd-prefix --hidden --follow --exclude .git"
    $selection = fzf

    $dir = Split-Path $selection
    cd $dir
    v "$HOME\$selection"
}
