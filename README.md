# ubuntu-post-install-script

Script de pós-instalação para Ubuntu, automatizando configurações e pacotes essenciais.

### Funcionalidades

O script realiza as seguintes ações:

- Remove pacotes Snap e limpa o cache.
- Atualiza os repositórios e pacotes do sistema.
- Instala pacotes essenciais como `net-tools`, `curl`, `gedit`, `gnome-tweaks`, entre outros.
- Instala programas adicionais como Google Chrome, VLC, PDF Arranger e outros.
- Configura o Flatpak e instala pacotes via Flatpak, como Firefox e OBS Studio.
- Remove pacotes e limpa o cache associado.
- Realiza algumas personalizações do Gnome.

### Requisitos

- Sistema baseado em Linux (Ubuntu ou derivado).
- Permissões de administrador (sudo) para realizar instalações e mudanças no sistema.

### Procedimentos iniciais

- Criar um diretório:<br>
mkdir /home/<seu usuário>/script

- Atribuir permissão de execução aos arquivos dentro do diretório:<br>
chmod -R +x /home/<seu usuário>/scripts

- Abrir o arquivo de configuração de permissões no Linux:<br>
sudo visudo

- Adicionar a linha no arquivo sudoers:<br>
<seu usuário> ALL=(ALL) NOPASSWD: /home/<seu usuário>/scripts/*

- Sarvar o arquivo install.sh dentro do diretório /script.

### 🔐 **Segurança**

- **Execução Imediata**: este script deve ser executado logo após a instalação do sistema. Caso contrário, antes de executá-lo em um sistema já em uso, recomenda-se realizar um backup completo de seus arquivos para garantir a integridade dos dados.
- **Remoção da Linha no `SUDOERS`**: Após a execução do script, remova a linha adicionada ao arquivo `/etc/sudoers` para evitar que permissões adicionais sejam mantidas desnecessariamente. Isso contribui para uma configuração mais segura do sistema.

### Contribuições
Se você deseja contribuir com melhorias para este script, sinta-se à vontade para abrir uma issue ou pull request.

### Licença
Este projeto é de uso pessoal e não possui uma licença específica. Use por sua conta e risco.
