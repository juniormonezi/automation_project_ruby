# frozen_string_literal: true

# login
Dado('que o usuário esta na página de login') do
  @page.login_page.go
end

Dado('que o usuario efetuou o login') do
  @page.login_page.go
  steps %{
    Quando enviar as informações de login
  }
end

Dado ('que o cliente está na tela do PLP') do   
  @page.customer_page.customer_login
  @page.customer_page.send_element
  @page.customer_page.start_session
end  
