
Dado('que navego para a página de busca do banco de questões') do
    visit 'https://opentdb.com/browse.php'

  end
  
  Dado('digito {string} no campo de busca') do |busca|
    @BancoQuestoes.input_busca.set busca
    @BancoQuestoes.categoria.select 'Category'
 
  end
  
  Quando('clico no botão de buscar') do
    @BancoQuestoes.bnt_busca.click

  end
  
  Então('visualizo uma mensagem de erro com o texto {string}') do |msg_erro|
    expect(page).to have_content msg_erro

  end
  
  Então('uma listagem com {int} itens deve ser exibida') do |qtd_itens|
    tabela = page.find(:css, '#page-top > div:nth-child(3) > table')
    contador = tabela.all(:css, 'tr').size

    resultado = contador.eql? qtd_itens

    puts contador
    puts resultado

  end
  
  Então('o controle de paginação deve estar presente') do
    expect(find('#page-top > div:nth-child(3) > center > ul').visible?).to be true

  end
  
  Dado('clico no botão adicionar perguntas') do
    @BancoQuestoes.add_pergunta.click

  end