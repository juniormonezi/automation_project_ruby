# frozen_string_literal: true

class CustomerLoginPage < BasePage
  attr_reader :customer_name_field, :customer_item_field, :customer_start_session_button
  
  def initialize
    @customer_name_field = EL['customer_name_field']
    @customer_item_field = EL['customer_item_field']
    @customer_start_session_button = EL['customer_start_session_button']
  end

  def customer_login(user,name)
    $name = name
    find_field(@customer_name_field).send_keys(user)
  end

  def send_element
    find(@customer_item_field).click
  end

  def login_user_business
    nome.set 'teste social'
    clienteBusiness.click
  end

  def start_session
    find(@customer_start_session_button).click
    expect_name = find('.user-al-visible').text
    expect_name
  end
end
