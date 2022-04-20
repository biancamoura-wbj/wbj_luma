#language:pt

@carrinho
Funcionalidade: Carrinho

Cenario: Adicionar 1 produto ao carrinho

Dado que eu entre na tela de login
Quando realizo login com 'roni_cost@example.com' e 'roni_cost3@example.com'
E escolho produto
E adiciono no carrinho
Então recebo a mensagem 'You added Helios EverCool™ Tee'