# language: pt

@book_store_application
Funcionalidade: Book Store Application.
    Com o propósito de realizar cadastro na aplicação Book Store,
    eu gostaria de preencher o formulário de cadastro
    e validar a inserção de um livro em minha coleção

    @cadastro_password_numerico
    Cenario: Realiza cadastro com password numérico
        Dado que estou na pagina de login
        E clico em New User
        E preencho First Name com "teste"
        E Last Name com "teste"
        E UserName com "teste"
        E Password com "12345"
        E clico em Register
        Entao devo ver a mensagem "Please verify reCaptcha to register!"

    @login_com_sucesso
    Cenario: Login com sucesso
        Dado que estou na pagina de login
        E preencho userName com "teste"
        E Password com "@Legria69"
        E clico em Login
        Então devo ver meu usuario "teste" logado    

    @acessa_ebook_livraria
    Cenario: Acessa Ebook da livraria
        Então devo clicar em Go To Book Store
        E na barra de pesquisa digitar "git"
        E clicar em Git Pocket Guide
        Então devo ver a pagina do livro com o ISBN "9781449325862" e author "Richard E. Silverman"
        E clicar em Add To Your Collection
        E clicar em Profile
        Então devo ver "Git Pocket Guide" na lista

    