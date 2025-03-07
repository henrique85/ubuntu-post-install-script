#!/bin/bash

# Exibindo a arte do pinguim
echo " ______________________________________"
echo "( Iniciando o script de configuração! )"
echo " --------------------------------------"
echo "       \\"
echo "        \\"
echo "         <(^)"
echo "          ( )"

sleep 3

## Mensagem informativa sobre o início do script.
#echo -e "\n#####   Iniciando o script de configuração...   #####"
#sleep 3

##################################################

# REMOVENDO EVENTUAIS TRAVAS DO APT

echo -e "\n#####   Removendo eventuais travas do APT...   #####"
sleep 2
sudo rm /var/lib/dpkg/lock-frontend;
sudo rm /var/cache/apt/archives/lock;
echo -e "\n#####   Travas removidas!   #####\n"

##################################################

# REMOVER SNAPS

echo -e "#####   Removendo pacotes Snap...   #####\n"
sleep 2

sudo snap remove gtk-common-themes &&
sudo snap remove gnome-42-2204 &&
sudo snap remove firmware-updater &&
sudo snap remove snap-store &&
sudo snap remove bare &&
sudo snap remove snapd-desktop-integration &&
sudo snap remove firefox &&
sudo snap remove core22 &&
sudo snap remove snapd

# Limpa cache do snapd
echo -e "\n#####   Limpando cache Snap...   #####"
sleep 2

sudo rm -rf /var/cache/snapd
sudo rm -rf ~/snap

echo -e "\n#####   Remoção dos pacotes Snap concluída!   #####"

##################################################

# ATUALIZAÇÃO

# Atualiza a lista de Repositórios
echo -e "\n#####   Atualizando repositórios...   #####\n"
sleep 2
sudo apt update
echo -e "\n#####   Repositórios atualizados!   #####"

# Atualiza a lista de Pacotes e Resolve Dependências
echo -e "\n#####   Atualizando pacotes e resolvendo dependências...   #####\n"
sleep 2
sudo apt upgrade -y
sudo apt full-upgrade -y
echo -e "\n#####   Pacotes atualizados e dependências resolvidas!   #####"

##################################################

# DOWNLOAD DE PROGRAMAS EXTERNOS

#mkdir /home/$USER/Downloads/programas
#cd /home/$USER/Downloads/programas

##################################################

# PROGRAMAS DO REPOSITÓRIO
#apt-add-repository ppa:graphics-drivers/ppa

##################################################

# UBUNTU RESTRICTED EXTRAS

echo -e "\n#####   Instalando o Ubuntu Restricted Extras...   #####\n"
sleep 2
# Aceita a licença do ttf-mscorefonts-installer automaticamente
echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true" | sudo debconf-set-selections
# Instala o ubuntu-restricted-extras sem interação
sudo apt install -y ubuntu-restricted-extras
# Mensagem informativa sobre a conclusão
echo -e "\n#####   Instalação Concluída!   #####"

## Para Linux Mint
#sudo apt install mint-meta-codecs

##################################################

# PACOTES FLATPAK

echo -e "\n#####   Configurando pacotes Flatpak...   #####\n"
sleep 2
# Instala o flatpak e adiciona o repositório Flathub
sudo apt install -y flatpak
sudo apt install -y gnome-software-plugin-flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo -e "\n#####   Configuração de pacotes Flatpak concluída!   #####"

##################################################

# INSTALAÇÃO DE PROGRAMAS

# Instalação do NET-TOOLS que é um conjunto de ferramentas antigas de redes.
echo -e "\n#####   Instalando as ferramentas Net Tools...   #####\n"
sleep 2
sudo apt install -y net-tools
echo -e "\n#####   Net Tools instalado com sucesso!   #####"

# Instalação do CURL para fazer requisições HTTP.
echo -e "\n#####   Instalando Curl para fazer requisições HTTP...   #####\n"
sleep 2
sudo apt install -y curl
echo -e "\n#####   Curl instalado com sucesso!   #####"

# Instalação do GOOGLE CHROME.
echo -e "\n#####   Instalando Google Chrome...   #####\n"
sleep 2
# Baixa o arquivo .deb mais recente do Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# Instala o Google Chrome usando o arquivo .deb
sudo apt install ./google-chrome-stable_current_amd64.deb
# Deleta o arquivo .deb após a instalação
rm -f google-chrome-stable_current_amd64.deb
echo -e "\n#####   Google Chrome instalado com sucesso!   #####"

# Instalação do FIREFOX via FLATPAK.
echo -e "\n#####   Instalando Firefox...   #####\n"
sleep 3
sudo flatpak install -y flathub org.mozilla.firefox/x86_64/stable
echo -e "\n#####   Firefox instalado com sucesso!   #####"

## Instalação do LIBREOFFICE.
#echo -e "\n#####   Instalando LibreOffice...   #####\n"
#sleep 2
## Adiciona o repositório PPA (Personal Package Archive) do LibreOffice.
#sudo add-apt-repository -y ppa:libreoffice/ppa
## Atualiza a lista de pacotes.
#sudo apt update
## Instala o LibreOffice.
#sudo apt install -y libreoffice
## Instala a tradução para português do Brasil.
#sudo apt install -y libreoffice-l10n-pt-br
## Instala o corretor ortográfico em português do Brasil.
#sudo apt install -y hunspell-pt-br
## Instala as regras de hifenização para o português do Brasil.
#sudo apt install -y hyphen-pt-br
#echo -e "\n#####   LibreOffice instalado com sucesso!   #####"

# Instalação do GEDIT.
#echo -e "\n#####   Substituindo Gnome Text Editor pelo Gedit...   #####\n"
#sleep 2
#sudo apt purge -y gnome-text-editor
## Instalação do Gedit via FLATPAK
##flatpak install flathub org.gnome.gedit
sudo apt install -y gedit
#echo -e "\n#####   Gedit instalado com sucesso!   #####"

# Instalação do GNOME TWEAKS.
echo -e "\n#####   Instalando Gnome Tweaks...   #####\n"
sleep 2
sudo apt install -y gnome-tweaks
echo -e "\n#####   Gnome Tweaks instalado com sucesso!   #####"

## Instalação do ANYDESK.
#echo -e "\n#####   Instalando AnyDesk...   #####\n"
#sleep 2
## Baixa o arquivo .deb do AnyDesk
#wget -O anydesk.deb https://download.anydesk.com/linux/anydesk_6.4.0-1_amd64.deb
## Instala o AnyDesk usando o arquivo .deb
#sudo apt install -y ./anydesk.deb
## Deleta o arquivo .deb após a instalação
#rm -f anydesk.deb
#echo -e "\n#####   AnyDesk instalado com sucesso!   #####"

## Instalação do TEAMVIEWER.
#echo -e "\n#####   Instalando TeamViewer...   #####\n"
#sleep 2
#sudo apt install -y curl
## Instalar pacotes iniciais para o TeamViewer.
#sudo apt install software-properties-common apt-transport-https curl ca-certificates -y
## Baixando a chave GPG do TeamViewer
#curl -fSsL https://download.teamviewer.com/download/linux/signature/TeamViewer2017.asc | sudo gpg --dearmor | sudo tee /usr/share/keyrings/teamview.gpg > /dev/null
## Adicionando repositório do TeamViewer.
#echo "deb [arch=amd64 signed-by=/usr/share/keyrings/teamview.gpg] http://linux.teamviewer.com/deb stable main" | sudo tee /etc/apt/sources.list.d/teamviewer.list
## Atualizar lista de repositórios.
#sudo apt update
## Instalar o Teamviewer confirmando demais opções.
#DEBIAN_FRONTEND=noninteractive sudo apt install -y teamviewer --option "Dpkg::Options::=--force-confold"
#etecho -e "\n#####   TeamViewer instalado com sucesso!   #####"

## Desinstalar o TeamViewer.
#sudo apt remove --purge teamviewer -y
## Remova os arquivos de configuração restantes.
#sudo rm -rf /etc/teamviewer
## Limpe o cache de pacotes.
#sudo apt autoremove -y
#sudo apt autoclean
## Remova o repositório e a chave GPG
#sudo rm /etc/apt/sources.list.d/teamviewer.list
#sudo rm /usr/share/keyrings/teamview.gpg
## Procure referências ao TeamViewer em outros arquivos.
#grep -Ri "teamviewer" /etc/apt/

# Instalação do PDF ARRANGER.
echo -e "\n#####   Instalando PDF Arranger...   #####\n"
sleep 2
sudo apt install -y pdfarranger
echo -e "\n#####   PDF Arranger instalado com sucesso!   #####"

# Instalação do VLC.
echo -e "\n#####   Instalando VLC...   #####\n"
sleep 2
sudo apt install -y vlc
echo -e "\n#####   VLC instalado com sucesso!   #####"

## Instalação do gerenciador de pacotes SYNAPTIC.
#echo -e "\n#####   Instalando gerenciador de pacotes Synaptic...   #####\n"
#sudo apt install -y synaptic
#echo -e "\n#####   Synaptic instalado com sucesso!   #####"

## Instalação do particionador GPARTED.
#echo -e "\n#####   Instalando GParted...   #####\n"
#sudo apt install -y gparted
#echo -e "\n#####   GParted instalado com sucesso!   #####"

## Instalação do SPOTIFY.
#echo -e "\n#####   Instalando Spotify...   #####\n"
#sudo flatpak install -y flathub com.spotify.Client
#echo -e "\n#####   Spotify instalado com sucesso!   #####"

## Instalação do OBS STUDIO.
#echo -e "\n#####   Instalando OBS Studio...   #####\n"
#sudo flatpak install -y flathub com.obsproject.Studio
#echo -e "\n#####   OBS Studio instalado com sucesso!   #####"

## Instalação do SLACK.
#echo -e "\n#####   Instalando Slack...   #####\n"
#sudo flatpak install -y flathub com.slack.Slack
#echo -e "\n#####   Slack instalado com sucesso!   #####"

## Instalação do WINFF.
#echo -e "\n#####   Instalando conversor WinFF...   #####\n"
#sudo apt install -y winff
#echo -e "\n#####   WinFF instalado com sucesso!   #####"

# Instalação do EXTENSION MANAGER.
echo -e "\n#####   Instalando Extension Manager...   #####\n"
sleep 2
sudo flatpak install -y flathub com.mattjakeman.ExtensionManager
echo -e "\n#####   Extension Manager instalado com sucesso!   #####"

# Instalação do SAMBA.
echo -e "\n#####   Instalando Samba...   #####\n"
sleep 2
sudo apt install -y samba
echo -e "\n#####   Samba instalado com sucesso!   #####"

##################################################

# DCONF

# Instalação do Dconf
echo -e "\n#####   Instalando Dconf...   #####\n"
sleep 2
sudo apt install -y dconf-editor
echo -e "\n#####   Dconf instalado com sucesso!   #####"

#echo -e "\n#####   Instalando Dconf...   #####\n"
#sleep 2
#sudo apt install -y dconf-editor
#if dpkg -l | grep -q dconf-editor; then
#    echo -e "\n#####   Dconf instalado com sucesso!   #####"
#    sleep 2
#else
#    echo -e "\n#####   Falha na instalação do Dconf!   #####"
#    sleep 2
#    exit 1
#fi

## Instalar dbus-x11 caso não esteja presente
#if ! dpkg -l | grep -q dbus-x11; then
#    echo -e "\n#####   Instalando dbus-x11...   #####\n"
#    sleep 2
#    sudo apt install -y dbus-x11
#    echo -e "\n#####   Dbus-x11 instalado com sucesso!   #####"
#    sleep 2
#fi

##################################################

# Remove pacotes relacionados ao YELP.
echo -e "\n#####   Removendo Yelp…   #####\n"
sleep 2

# Remover o pacote com purge.
sudo apt purge --auto-remove yelp yelp-xsl libyelp0 -y

# Limpar caches e resíduos do apt.
sudo apt autoremove -y
sudo apt autoclean -y
sudo apt clean -y

# Remover diretórios, ícones, configurações e bibliotecas relacionados.
rm -rf /etc/yelp
rm -rf ~/.config/yelp
rm -rf /usr/share/applications/yelp.desktop
rm -rf /usr/share/icons/hicolor/*/apps/yelp*
rm -rf /usr/share/icons/breeze/status/*/yelp*

# Remover arquivos temporários e logs relacionados.
rm -rf /tmp/*yelp*
rm -rf /var/tmp/*yelp*
sudo journalctl --vacuum-time=1d
rm -rf /var/log/*yelp*

# Remover diretórios Flatpak e Snap relacionados
rm -rf /var/lib/flatpak/app/org.gnome.Yelp*
rm -rf /var/lib/snapd/snaps/yelp*

# Forçar permissões e remoção de processos systemd ou escopos remanescentes
#sudo systemctl stop app-flatpak-org.gnome.Yelp*.scope
#sudo systemctl disable app-flatpak-org.gnome.Yelp*.scope
rm -rf /sys/fs/cgroup/user.slice/user-1000.slice/user@1000.service/app.slice/app-flatpak-org.gnome.Yelp*
rm -rf /run/user/1000/systemd/units/invocation:app-flatpak-org.gnome.Yelp*
rm -rf /run/user/1000/systemd/transient/app-flatpak-org.gnome.Yelp*

# Verificar e remover qualquer sobra do sistema
find / -name '*yelp*' -exec sudo rm -rf {} + 2>/dev/null

## Verificar se o YELP foi realmente removido.
#if dpkg -l | grep -q 'yelp'; then
#    sudo apt remove -y --purge yelp yelp-xsl libyelp0
#    sudo apt autoremove -y
#fi

echo -e "\n#####   Yelp removido com sucesso!   #####\n"

##################################################

# FINALIZANDO SCRIPT

# Mensagem informativa sobre o script estar finalizando.
echo -e "\n#####   Script finalizando… Aguarde mais um pouco!   #####"
sleep 2

sudo apt autoremove -y
sudo apt autoclean -y
sudo apt clean -y

sudo apt update &&
sudo apt upgrade -y &&
sudo apt full-upgrade -y &&

#echo "##### Atualizando pacotes e cache do Flatpak...   #####\n"
#sudo flatpak update -y
#echo "##### Limpando cache do Flatpak...   #####\n"
#sudo flatpak cache --cleanup
#echo "##### Limpeza do Flatpak concluída.   #####\n"

# Remover pacotes instalados que não são mais necessários.
echo -e "\n#####   Removendo pacotes que não são mais necessários...   #####\n"
sleep 2
sudo apt autoremove -y

# Limpar o cache de pacotes em /var/cache/apt/archives, removendo todos os arquivos .deb que já foram baixados e instalados.
echo -e "\n#####   Limpando cache de pacotes desnecessários...   #####"
sleep 2
sudo apt autoclean -y
sudo apt clean -y

##################################################

# CONFIGURAÇÕES DO GNOME

echo -e "\n#####   Configurando Gnome...   #####"
sleep 2

# Habilitar mais opções no Aplicativos Iniciais de Sessão
sudo sed -i "s/NoDisplay=true/NoDisplay=false/g" /etc/xdg/autostart/*.desktop

# Minimizar com 1 click
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

# Habilita o "Não Perturbe"
gsettings set org.gnome.desktop.notifications show-banners false

# Desabilita notificações na tela de bloqueio
gsettings set org.gnome.desktop.notifications show-in-lock-screen false

# Desabilitar o tempo de espera para apagar a tela (nunca apagar a tela)
# 0 segundos = nunca apagar a tela
gsettings set org.gnome.desktop.session idle-delay 0

# Desabilitar a exibição da “Pasta Pessoal" no desktop
gsettings set org.gnome.shell.extensions.ding show-home false

# Desabilitar mostrar "Lixo" na área de trabalho
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash false

# Desabilitar mostrar "Volumes e Dispositivos" na área de trabalho
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false

## Aumentar fonte do Gnome Terminal
#gsettings set org.gnome.desktop.interface monospace-font-name 'Monospace 14'

echo -e "\n#####   Configuração do Gnome concluída!   #####"

##################################################

# Mensagem informativa sobre a conclusão.
echo -e "\n#####   Script de configuração finalizado!   #####\n"
