#language: pt

Funcionalidade: Busca no Banco de Questões 

Cenário: Busca por questão inexistente

    Dado que navego para a página de busca do banco de questões
    E digito 'Ciência: Computadores' no campo de busca 
    Quando clico no botão de buscar 
    Então visualizo uma mensagem de erro com o texto 'No questions found.'

Cenário: Controle de páginação

    Dado que navego para a página de busca do banco de questões
    E digito 'Science: Computers' no campo de busca 
    Quando clico no botão de buscar 
    Então uma listagem com 25 itens deve ser exibida
    E o controle de paginação deve estar presente

Cenário: Adicionar perguntas

    Dado que navego para a página de busca do banco de questões
    E clico no botão adicionar perguntas
    Então visualizo uma mensagem de erro com o texto 'ERROR! You must be logged in to submit a trivia question.'
    