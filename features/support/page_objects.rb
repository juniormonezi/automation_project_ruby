# frozen_string_literal: true

class PageObject
  def salesman_page
    SalesmanLoginPage.new
  end

  def customer_page
    CustomerLoginPage.new
  end

  def login_page
    LoginPage.new
  end

  def customer_registration_page
    CustomerRegistrationPage.new
  end
end
