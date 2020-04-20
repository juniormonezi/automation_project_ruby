# frozen_string_literal: true

class BasePage
  include Capybara::DSL

  def initialize(kind)
    @data = FileHelper.read_file("#{Dir.pwd}/features/support/fixtures/#{kind}.json")
  end
end
