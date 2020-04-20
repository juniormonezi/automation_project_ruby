# frozen_string_literal: true

require 'report_builder'
require 'date'

Before do
  window = Capybara.current_session.current_window
  window.maximize
  @page = PageObject.new
end

# After do |scenario|
#     # if scenario.failed?
#     #binding.pry
#     @browser.driver.save_screenshot('image.png')
#        @page.driver.save_screenshot 'image.png'
#        embed("image.png", 'image/png')
#     # end
# end

at_exit do
  time = Time.now.to_s
  ReportBuilder.configure do |config|
    config.json_path = 'log/report.json'
    config.report_path = 'log/cucumber_relatorio'
    config.report_types = [:html]
    config.report_title = 'Testes automatizados C&C'
    config.compress_images = false
    config.color = 'indigo'
    config.additional_info = { 'Project name' => 'Antonio Monezi', 'Platform' => 'Front-end', 'Report generated' => time }
  end
  ReportBuilder.build_report
end
