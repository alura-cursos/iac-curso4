# Resumo do projeto

Primeiro projeto de Infraestrutura como código com docker, utilizando Terraform para provisionamento e AWS como provedor da infraestrutura.

## 🔨 Funcionalidades do projeto

A partir desse projeto você pode:

- Criar ambientes para aplicações Docker
- Separar o seu codigo em 2 ambientes, um de produção e um de homologação
- Configurar maquinas para executar um container com uma API em Django automaticamente
- Preparar uma infraestrutura elastica

## ✔️ Técnicas e tecnologias utilizadas

Neste App são exploradas as seguintes técnicas e tecnologias:

- **Criação de maquinas para executar containers Docker**: criação de maquinas virtuias no ambiente EC2 (Elastic Compute Cloud) da AWS feito de forma automatica pelo Elastic Beanstalk
- **Criação de imagens Docker**: criação das imagens a serem utilizadas pelo Docker 
- **Elastic Constainer Registry**: o repositorio de containers da AWS, onde vamos colocar as nossas imagens.
- **Separação de ambientes**: 2 ambientes separados, construidos de forma automatica pelo Terraform, reultilizando codigo.

## 📁 Acesso ao projeto

Você pode [baixar o zip](https://github.com/leollo98/iac-curso4/archive/refs/heads/Aula_5.zip) ou [acessar o código fonte](https://github.com/leollo98/iac-curso4/tree/Aula_5) do projeto final.

## 🛠️ Abrir e rodar o projeto

O projeto foi desenvolvido no VSC (Visual Studio Code), sendo assim, instale o VSC (pode ser uma versão mais recente) e, na tela inicial, procure a opção extenções, ou aperte Ctrl+Shift+X, e busque por HashiCorp Terraform, assim teremos o suporte do intellisense, tornando o trabalho de escrever o código mais rapido.

> Caso baixou o zip, extraia o projeto antes de procurá-lo, pois não é possível abrir via arquivo zip

Vá até a paste a abra a pasta do projeto. Apos abrir o projeto abra um terminal, pode ser o integrado com o VSC, navegue até as pastas `infra/`,`env/Prod` e `env/homolog` e execute o comando `terraform init` dentro delas, agora temos o terraform iniciado e podemos começar a ultiliza-lo. Para criar a infraestrutura, execute o terraform apply em uma das pastas de Produção (`env/Prod`) ou de Homologação (`env/homolog`) de acordo com o ambiente desejado.

Em seguida atualize o ambiente para a ultima versão de produção com:

```aws elasticbeanstalk update-environment --environment-name ambinete-de-producao --version-label ambinete-de-producao```

ou para homologação com:

```aws elasticbeanstalk update-environment --environment-name ambinete-de-homolog --version-label ambinete-de-homolog```

🏆