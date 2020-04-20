#language: pt

@search
Funcionalidade: Realizar pesquisa do produto

Contexto: Realizar Login
Dado que o usuario efetuou o login

@search_product
Cenário: Pesquisar produto
Dado que o cliente está na tela do PLP
Quando preencho o campo de pesquisa com dados do produto
E clico no botão pesquisar
Então será retornado os dados do produto solicitado
