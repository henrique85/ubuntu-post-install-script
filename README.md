# ubuntu-post-install-script

Script de pós-instalação para Ubuntu, automatizando configurações e pacotes essenciais.

# Funcionalidades

O script realiza as seguintes ações:

- Exibe uma arte do pinguim e inicia o processo com uma mensagem informativa.
- Remove eventuais travas do `APT`.
- Remove pacotes Snap e limpa o cache.
- Atualiza os repositórios e pacotes do sistema.
- Instala pacotes essenciais como `net-tools`, `curl`, `gedit`, `gnome-tweaks`, entre outros.
- Configura o Flatpak e instala pacotes via Flatpak, como Firefox e Spotify.
- Instala programas adicionais como Google Chrome, VLC, PDF Arranger, Samba, Dconf, e outros.

# Requisitos

- Sistema baseado em Linux (Ubuntu ou derivado).
- Permissões de administrador (sudo) para realizar instalações e mudanças no sistema.

# Procedimentos iniciais

Criar um diretório:<br>
mkdir /home/<seu usuário>/script

Atribuir permissão de execução aos arquivos dentro do diretório:<br>
chmod -R +x /home/<seu usuário>/scripts

Abrir o arquivo de configuração de permissões no Linux:<br>
sudo visudo

Adicionar a linha no arquivo sudoers:<br>
<seu usuário> ALL=(ALL) NOPASSWD: /home/<seu usuário>/scripts/*

Sarvar o arquivo install.sh dentro do diretório /script.


O script realizará a instalação dos pacotes e configurações descritas.

Pacotes Instalados
Ubuntu Restricted Extras
Google Chrome
Firefox (via Flatpak)
VLC
Gedit
Gnome Tweaks
Curl
Net-Tools
PDF Arranger
Samba
Dconf Editor
Flatpak e Flathub
Configurações Adicionais
O script também remove pacotes Snap e limpa o cache associado.
Realiza a atualização do sistema antes de proceder com as instalações.
Contribuições
Se você deseja contribuir com melhorias para este script, sinta-se à vontade para abrir uma issue ou pull request.

Licença
Este projeto é de uso pessoal e não possui uma licença específica. Use por sua conta e risco.
