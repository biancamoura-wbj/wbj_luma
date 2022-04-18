carrinho = CarrinhoPage.new

Dado("que eu entre na tela de login") do
    visit 'https://magento.nublue.co.uk/customer/account/login/referer/aHR0cHM6Ly9tYWdlbnRvLm51Ymx1ZS5jby51ay8%2C/'
end
  
Quando("realizo login com {string} e {string}") do |email, senha|
    carrinho.realiza_login(email,senha)
end

Quando("escolho produto") do
    carrinho.escolhe_produto
  end

Quando("adiciono no carrinho") do
    carrinho.adiciono_carrinho
end
  
Então("recebo a mensagem {string}") do |mensagem|
    carrinho.recebo_mensagem(mensagem)
end
