Dado("que eu acesso a tela de login") do
    visit 'https://magento.nublue.co.uk/customer/account/login/referer/aHR0cHM6Ly9tYWdlbnRvLm51Ymx1ZS5jby51ay8%2C/'
end
  
Quando("faço login com {string} e {string}") do |email, senha|
    @email = email #variavel de instancia email que veio da documentação, pra não precisar ficar alterando o email aqui no meu codigo
    find('input[id=email]').set @email
    find('#pass').set senha # O '#' é um CSS selector de id, ele busca por id com o valor que passei. Ou se não poderia ser id: 'pass'
    click_button 'send'
end
  
Então("devo ser autenticado com sucesso") do
    find('span[class=logged-in]')
end