require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome

require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome

Dado('que navego para a página de busca do banco de questões') do
   driver.navigate.to "https://opentdb.com/browse.php"
  end
  
  Dado('digito {string} no campo de busca') do |string|
    driver.find_element(:name, 'query').send_keys("Ciência: Computadores")
  end
  
  Quando('clico no botão de buscar') do
    driver.find_element(:xpath, '//*[@id="page-top"]/div[1]/form/div/button').click
  end
  
  Então('visualizo uma mensagem de erro com o texto {string}') do |string|
    mensagem_esperada = driver.find_element(:css, "#page-top > div:nth-child(3) > div")
        "No questions found".eql? mensagem_esperada.text
  end

  Então('uma listagem com {int} itens deve ser exibida') do |int|  
    # Então('uma listagem com {float} itens deve ser exibida') do |float|
      pending # Write code here that turns the phrase above into concrete actions
    end
    
    Então('o controle de paginação deve estar presente') do

      driver.find_element(:css, "#page-top > div:nth-child(3) > center > ul").displayed? == true
      
    end

    Dado('clico no botão adicionar perguntas') do
      driver.find_element(:css, '#navbar > ul > li:nth-child(2) > a').click
    end
    
    Então('visualizo uma mensagem de erro com o textp {string}') do |string|
      mensagem_esperada = driver.find_element(:css, "#page-top > div.container > div")
        "ERROR! You must be logged in to submit a trivia question.".eql? mensagem_esperada.text
    end