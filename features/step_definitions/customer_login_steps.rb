# frozen_string_literal: true

Quando('enviar as informações de usuário {string}, {string}') do |user, name|
  @page.customer_page.customer_login(user, name)
end

Quando('selecionar o usuário retornado') do
  @x = @page.customer_page.send_element
end

Quando("clica no botão Iniciar Sessão") do
  @y = @page.customer_page.start_session
end

Então('sistema deverá exibir a tela da PLP') do
  expect(@y).to include($name)
end
