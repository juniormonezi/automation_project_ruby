# frozen_string_literal: true

Quando('enviar as informações de login') do
  @page.salesman_page.salesman_login
end

Então('o sistema deve exibir a tela de informações do cliente') do
end

# login_invalido
Quando('enviar as informações de usuário {string}, senha {string}') do |user, password|
  @page.salesman_page.salesman_login(user, password)
end

Então('deverá exibir a mensagem de erro {string}') do |expect_mesage|
  expect(page.assert_text(expect_mesage)).to eq true
end
