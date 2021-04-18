require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome

Dado('que navego para a página de busca do banco de questões') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Dado('digito {string} no campo de busca') do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('clico no botão de buscar') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então('visualizo uma mensagem de erro com o texto {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end