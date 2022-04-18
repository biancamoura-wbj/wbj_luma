class LoginPage
include Capybara::DSL

    def acesso_pagina
        visit 'https://magento.nublue.co.uk/customer/account/login/referer/aHR0cHM6Ly9tYWdlbnRvLm51Ymx1ZS5jby51ay8%2C/'
    end

    def faz_login(email,senha)
        find_by_id('email').set email
        find('#pass').set senha
        click_button 'send'
        sleep 5
    end

    def login_sucesso
        page.has_css?('.logged-in', visible: true)
    end
end

