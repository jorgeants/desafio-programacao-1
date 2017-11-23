# Desafio de programação

Aplicação que faz upload de arquivo com colunas separadas por tabs, o lê, e normaliza seus dados para inserir em um banco de dados relacional.

## Dependências

* Ruby 2.4+
* Bundler
* Sinatra
* SQLite 3+

## Instalação

Com o ruby 2.4 ou superior instalado, instale a gem Bundler se caso não tiver:

```
gem install 'bundler'
```

Instale as outras gems e suas respectivas dependências executando:

```
bundle install
```

## Migração

Para criar e migrar o banco de dados execute:

```
rake db:create db:migrate
```

## Executando a aplicação

Execute o projeto em seu terminal rodando:

```
ruby app.rb
```