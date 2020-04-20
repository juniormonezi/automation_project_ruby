# frozen_string_literal: true

class LoginClientPage < BasePage

  attr_reader :name_field, :customer_field
  
  def initialize
    super('login_client_fixture')
    @name_field = EL['name_field']
    @customer_field = EL['customer_field']
  end

  def login_client
    find_field(@name_field).send_keys(@data.client_name)
    customer_field.click
  end

  def begin_session
    click_button 'INICIAR SESSÃO'
  end
end
