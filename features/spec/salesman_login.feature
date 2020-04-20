#language: pt

@login
Funcionalidade: Realizar login de vendedor

Contexto: Página de Login
Dado que o usuário esta na página de login

@salesman_login_success
Cenário: Efetuar login como vendedor na Loja virtual
Quando enviar as informações de login
Então o sistema deve exibir a tela de informações do cliente

@salesman_login_invalid
Esquema do Cenário: Efetuar login vendedor com dados invalidos
Dado que o usuário esteja na tela inicial do sistema
Quando enviar as informações de usuário <user>, senha <password>
Então deverá exibir a mensagem de erro 'ID e/ou senha do agente não encontrada'
Exemplos:
|user          |password |
|'teste'       | ' '     |
|'teste'       |'$#'     |
|'teste'       |' '      |
|'teste'       |'1234234'|
|' '           |' '      |
