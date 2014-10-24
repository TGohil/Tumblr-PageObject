browser = Watir::Browser.new :firefox


Before do
  @b = browser
end

at_exit do
 browser.close
end