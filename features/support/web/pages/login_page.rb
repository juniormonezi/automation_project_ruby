# frozen_string_literal: true

class LoginPage
  include Capybara::DSL
  def go
    visit '/pt/login'
  end
end
