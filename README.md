# desafio-automacao-testes-dbserver

Projeto de automacao de testes Web. Utilizando as tecnologias Ruby, Capybara, Cucumber para o desafio técnico em automação de testes da empresa DBServer.

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



### Rodando os testes localmente

- Clonar repositório e na pasta do projeto:

- Pela linha de comando
  ```
    (Para rodar todos os testes)
    $ cucumber
    (Para rodar somente um teste)
    $ cucumber -t @test_name
    (Para rodar locamente com reports, na pasta test_results)
    $ bundle exec cucumber --format pretty --format html --out=test_results/features_report.html
  ```

### Pode ser executado e testado no Circle CI:

Artefatos gerados com relatórios da execução.

https://app.circleci.com/pipelines/github/jadersaldanha/desafio-dbserver

### Resources

##### [SeleniumHQ](http://www.seleniumhq.org/docs/)

##### [Cucumber](https://cucumber.io/docs/reference)

##### [Ruby](http://ruby-doc.org/)
