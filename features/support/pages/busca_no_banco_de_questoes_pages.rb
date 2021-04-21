class BancoQuestoes < SitePrism::Page

    element :input_busca, '#query'
    element :bnt_busca, '#page-top > div:nth-child(2) > form > div > button'
    element :msg_erro, '#page-top > div:nth-child(3) > div'
    element :categoria, '#type'
    element :add_pergunta, '#navbar > ul > li:nth-child(2) > a'

end
