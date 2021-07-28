# desafio-automacao-testes-dbserver

Projeto de automacao de testes Web. Utilizando as tecnologias Ruby, Capybara e Cucumber para o desafio técnico em automação de testes da empresa DBServer.
Sistema: https://demoqa.com/login.

### Setup - EXECUÇÃO LOCAL

1. Dependencias globais

   - Install [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
   - Ou Install Ruby with [Homebrew](http://brew.sh/)

   ```
   $ brew install ruby
   ```

   - Install bundler

   ```
   $ gem install bundler
   ```

2. Dependencias
   - Instalacao de pacotes
   ```
   $ bundle install
   ```

### Cenarios mapeados

Em razão do recapctha não foi possível realizar o teste de cadastro de usuario por automação, a recomendação seria ter um ambiente com esse feature toggle desligado para que o texte case fosse implementado.

https://github.com/jadersaldanha/desafio-dbserver/blob/master/features/specifications/book_store_application.feature

### Rodando os testes localmente

- Clonar repositório:
git clone https://github.com/jadersaldanha/desafio-dbserver.git

- Pela linha de comando e na pasta do projeto:
  ```
    (Para rodar todos os testes)
    $ cucumber
    (Para rodar somente um teste)
    $ cucumber -t @test_name
    (Para rodar locamente com reports, na pasta test_results)
    $ bundle exec cucumber --format pretty --format html --out=test_results/features_report.html
  ```

### Pode ser executado e testado no Circle CI:

A cada commit no repositório de testes é disparado uma pipeline em docker de uma imagem configurada com selenium, ruby e chrome headless para ser executado na nuvem.
Artefatos gerados com relatórios da execução. Pode-se executar pipelines a qualquer momento pela interface do circleCI.

https://app.circleci.com/pipelines/github/jadersaldanha/desafio-dbserver

### Resources

##### [SeleniumHQ](http://www.seleniumhq.org/docs/)

##### [Cucumber](https://cucumber.io/docs/reference)

##### [Ruby](http://ruby-doc.org/)
