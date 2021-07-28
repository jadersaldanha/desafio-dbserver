  Dado("que estou na pagina de login") do
    visit '/login'
  end

  E("clico em New User") do
    find('#newUser').click
  end

  E("preencho First Name com {string}") do |string|
    fill_in 'firstname', with: string
  end

  Dado("Last Name com {string}") do |string|
    fill_in 'lastname', with: string
  end
  
  Dado("UserName com {string}") do |string|
    fill_in 'userName', with: string
  end
  
  Dado("Password com {string}") do |string|
    fill_in 'password', with: string
  end
  
  Dado("clico em Register") do
    find('#register').click
  end
  
  Entao("devo ver a mensagem {string}") do |expected_text|
    element = find('#name', text: 'Please verify reCaptcha to register!')
    element.text.include? expected_text
  end

  Dado("preencho userName com {string}") do |string|
    fill_in 'userName', with: string
  end
  
  Dado("clico em Login") do
    find('#login').click
  end
  
  Então("devo clicar em Go To Book Store") do
    find('#gotoStore').click
  end
  
  Então("na barra de pesquisa digitar {string}") do |string|
    fill_in 'searchBox', with: string
  end
  
  Então("clicar em Git Pocket Guide") do
    find('#see-book-Git\ Pocket\ Guide > a').click
  end
  
  Então("devo ver a pagina do livro com o ISBN {string} e author {string}") do |string, string2|
    element1 = find('#userName-value', text: '9781449325862')
    element1.text.include? string
    element2 = find('#userName-value', text: 'Git Pocket Guide')
    element2.text.include? string2
  end
  
  Então("clicar em Add To Your Collection") do
    find('#addNewRecordButton', text: 'Add To Your Collection').click
    page.accept_alert
  end
  
  Então("clicar em Profile") do
    find('#item-3 > span', text: 'Profile').click
  end
  
  Então("devo ver {string} na lista") do |string|
    element1 = find('#see-book-Git\ Pocket\ Guide > a', text: 'Git Pocket Guide')
    element1.text.include? string
    sleep(5)
  end

  Então("devo ver meu usuario {string} logado") do |string|
    element1 = find('#userName-value', text: 'teste')
    element1.text.include? string
  end