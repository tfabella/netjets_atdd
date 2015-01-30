require 'watir-webdriver'

Before do
  @browser = Watir::Browser.new :chrome
  # begin
  #   @browser = Watir::Browser.new :ie
  # rescue => e
  #   warn e
  # end
end

After do
  @browser.close
end