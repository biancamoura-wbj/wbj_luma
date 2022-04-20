class CarrinhoPage
include Capybara::DSL

    def realiza_login(email,senha)
        login = LoginPage.new
        login.acesso_pagina
        login.faz_login(email, senha)
    end

    def escolhe_produto
            find('#ui-id-4').hover
            sleep 2
            find('#ui-id-16').hover
            sleep 2
            find('#ui-id-20').click
            sleep 2
            click_link('Helios EverCool™ Tee')
    end


    def adiciono_carrinho
            find('#option-label-size-144-item-168').click
            find('#option-label-color-93-item-49').click
            click_button 'Add to Cart'
    end

    def recebo_mensagem(mensagem)
        sleep 10
        assert_text(mensagem)
    end
end