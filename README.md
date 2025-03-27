# Script de Configuração de Diretórios, Grupos e Usuários

## Funcionalidades
- Criação de diretórios:
  - `/publico`, `/adm`, `/ven`, `/sec`
- Criação de grupos:
  - `GRP_ADM`, `GRP_VEN`, `GRP_SEC`
- Criação de usuários e atribuição a grupos:
  - **GRP_ADM**: `carlos`, `maria`, `joao`
  - **GRP_VEN**: `debora`, `sebatiana`, `roberto`
  - **GRP_SEC**: `josefina`, `amanda`, `rogerio`
- Configuração de permissões:
  - **Diretórios restritos**: `/adm`, `/ven`, `/sec` têm acesso total apenas para o proprietário e membros do grupo correspondente.
  - **Diretório público**: `/publico` tem acesso total para todos os usuários.

## Requisitos
- Ambiente Linux
- Permissão administrativa (ex.: `sudo`)
- `openssl` instalado

### Como instalar o OpenSSL
Para instalar o `openssl`, utilize o seguinte comando no terminal (é necessário ter privilégios administrativos):

```bash
sudo apt-get install openssl
```

Este comando é válido para distribuições baseadas em Debian, como Ubuntu. Caso esteja utilizando outra distribuição, substitua o gerenciador de pacotes (`apt-get`) conforme necessário, por exemplo:
- CentOS/Fedora: `sudo yum install openssl`
- Arch Linux: `sudo pacman -S openssl`

## Uso
Execute o script com privilégios de administrador:
```bash
sudo ./iac1_desafio.sh
```

## Resultados Esperados
- Diretórios criados com sucesso
- Grupos configurados corretamente
- Usuários adicionados aos grupos
- Permissões ajustadas conforme especificado

## Notas
- Senhas dos usuários configuradas como `Senha123`. Recomenda-se alterá-las conforme necessidade.
- Adapte nomes de grupos e diretórios para atender às necessidades específicas do sistema.

## Licença
Distribuído sob a [MIT License](https://opensource.org/licenses/MIT). Sinta-se livre para modificar e compartilhar.
