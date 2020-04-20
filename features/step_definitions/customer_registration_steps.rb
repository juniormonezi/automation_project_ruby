# frozen_string_literal: true

Quando("clico no botão Criar Nova Conta") do                                 
    @page.customer_registration_page.create_new_account
  end                                                                          
                                                                               
  Quando("informo todos os dados do cliente físico") do                        
    @page.customer_registration_page.registration_new_account_physical
  end                                                                          
                                                                               
  Quando("clica no botão Registrar") do                                        
    @page.customer_registration_page.click_register
  end                                                                          
                                                                               
  Então("sistema deverá exibir a tela da PLP com o usuário criado.") do        
    
  end                                                                          

  #criar cliente juridico
  Quando("informo todos os dados do cliente jurídico") do
    @page.customer_registration_page.registration_new_account_legal
  end