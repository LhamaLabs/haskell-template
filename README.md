# Template para Haskell

Esse é um template para estudar Haskell sem necessariamente ter que instalar ele em sua máquina. 

## Como usar

### Crie as imagem e o container

Para começar rode os comandos a primeira vez:

- `make build` = Cria uma imagem de Haskell
- `make container` = Cria o container

### Execute seus arquivos

- `make run <nome do arquivo>` = Executa o arquivo em src

EX:
> make run hello

ou

> make run ola
Roda os arquivos em exemplo.

### Caso queira o GHCi
- `make run repl`

### Caso queira acessar o terminal do Container
- `make run bash`
