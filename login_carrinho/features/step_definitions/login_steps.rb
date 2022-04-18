login = LoginPage.new
Dado("que eu acesso a tela de login") do
    login.acesso_pagina
end
  
Quando("faço login com {string} e {string}") do |email, senha|
    login.faz_login(email,senha)
end
  
Então("devo ser autenticado com sucesso") do
    login.login_sucesso
end