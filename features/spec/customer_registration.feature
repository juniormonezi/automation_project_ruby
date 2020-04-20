#language: pt

@customer_registration
Funcionalidade: Realizar cadastro cliente

Contexto: Realizar Login
Dado que o usuario efetuou o login

@physical_customer_registration
Cenário: Cadastrar cliente físico
Quando clico no botão Criar Nova Conta
E informo todos os dados do cliente físico
E clica no botão Registrar
Então sistema deverá exibir a tela da PLP com o usuário criado.

@legal_customer_registration
Cenário: Cadastrar cliente jurídico
Quando clico no botão Criar Nova Conta
E informo todos os dados do cliente jurídico
E clica no botão Registrar
Então sistema deverá exibir a tela da PLP com o usuário criado.