Dado("que eu acesso a tela de login") do
    visit 'https://magento.nublue.co.uk/customer/account/login/referer/aHR0cHM6Ly9tYWdlbnRvLm51Ymx1ZS5jby51ay8%2C/'
end
  
Quando("faço login com {string} e {string}") do |email, senha|
    @email = email
    @senha = senha
    find('input[id=email]').set @email
    find('#pass').set @senha
    click_button 'send'
end

Quando("escolho produto") do
    find('#ui-id-4').hover
    find('#ui-id-16').hover
    find('#ui-id-20').click
    click_link('Helios EverCool™ Tee')
  end

Quando("adiciono no carrinho") do
    find('#option-label-size-144-item-168').click
    find('#option-label-color-93-item-49').click
    click_button 'Add to Cart'
end
  
Então("recebo a mensagem {string}") do |mensagem|
    expect(page).to have_content mensagem
end
