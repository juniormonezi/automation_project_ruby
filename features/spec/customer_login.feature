#language: pt

@login_cliente
Funcionalidade: Realizar login de vendedor

Contexto: Realizar Login
Dado que o usuario efetuou o login

@customer_login_success
Esquema do Cenário: Efetuar login como cliente na Loja virtual
Quando enviar as informações de usuário <user>, <name>
E selecionar o usuário retornado
E clica no botão Iniciar Sessão
Então sistema deverá exibir a tela da PLP
Exemplos:
|user            |name          |
|'16077204000160'|'TESTE SOCIAL'|
