class CarrinhoPage
include Capybara::DSL

    def realiza_login(email,senha)
        login = LoginPage.new
        login.acesso_pagina
        login.faz_login(email, senha)
    end

    def escolhe_produto
        wait 5.seconds until find('#ui-id-4').hover
        wait 5.seconds until find('#ui-id-16').hover
        wait 5.seconds until find('#ui-id-20').click
        wait 5.seconds until click_link('Helios EverCool™ Tee')
    end


    def adiciono_carrinho
        wait 5.seconds until find('#option-label-size-144-item-168').click
        wait 5.seconds until find('#option-label-color-93-item-49').click
        click_button 'Add to Cart'
    end

    def recebo_mensagem(mensagem)
        wait 10.seconds until assert_text(mensagem)
    end
end