# frozen_string_literal: true

class SalesmanLoginPage < BasePage
  attr_reader :agent_id_field, :agent_password_field

  def initialize
    super('salesman_login_fixture')
    @agent_id_field = EL['agent_id_field']
    @agent_password_field = EL['agent_password_field']
    @user_data = ENV['front_user'] || DATA['user']
    @pass_data = ENV['front_pass'] || DATA['pass']
  end

  def salesman_login
    find_field(@agent_id_field).send_keys(@user_data)
    find_field(@agent_password_field).send_keys(@pass_data)
    click_button 'Conectar'
  end
end
