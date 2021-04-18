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
    sleep 5
  end