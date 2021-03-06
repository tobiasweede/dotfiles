diablo2()
{
if [[ $HOST = "tobi-legion" ]]; then
    # WINEPREFIX=/home/weiss/.local/share/wineprefixes/diablo2
    sudo mount /home/weiss/games/Diablo2/LOD-CD/diablo2-LoD.iso /mnt
    cd ~/.wine/drive_c/Program\ Files\ \(x86\)/Diablo\ II/Mod\ PlugY
    wine PlugY.exe
    # > /dev/null 2>&1
fi
if [[ $HOST = "tobi-yoga" ]]; then
    sudo mount /opt/Diablo2/LOD-CD/diablo2-LoD.iso /mnt
    cd '/opt/Diablo2/Mod PlugY'
    wine '/opt/Diablo2/Mod PlugY/PlugY.exe' > /dev/null 2>&1
fi
if [ $HOST = "ThinkPad.local.tobias-weiss.org" ]; then
    cd '/media/weiss/Windows8_OS/Diablo2/Mod PlugY'
    sudo mount /media/weiss/Windows8_OS/Diablo2_CDs/LOD/diablo2-LoD.iso /mnt
    wine '/media/weiss/Windows8_OS/Diablo2/Mod PlugY/PlugY.exe' > /dev/null 2>&1
fi
}

save_d2()
{
if [[ $HOST = "tobi-legion" ]]; then
    cp ~/games/Diablo2/Save/* ~/dotfiles/d2_save/
fi
if [[ $HOST = "ThinkPad.local.tobias-weiss.org" ]]; then
    cp /media/weiss/Windows8_OS/Diablo2/Save/* ~/dotfiles/d2_save/
fi
if [[ $HOST = "tobi-yoga" ]]; then
    cp  /opt/Diablo2/Save/* ~/dotfiles/d2_save/ 
fi
    cd ~/dotfiles
    git add -A
    git commit -m "d2 save" && git push
    git push
}

restore_d2()
{
cd ~/dotfiles
git pull
if [[ $HOST = "tobi-legion" ]]; then
    cp ~/dotfiles/d2_save/* ~/games/Diablo2/Save/
fi
if [[ $HOST = "tobi-yoga" ]]; then
    cp ~/dotfiles/d2_save/* '/opt/Diablo2/Save/' 
fi
if [[ "$HOST" = "ThinkPad.local.tobias-weiss.org" ]]; then
    cp ~/dotfiles/d2_save/* '/media/weiss/Windows8_OS/Diablo2/Save/' 

fi
}
