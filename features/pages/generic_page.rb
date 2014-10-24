class GenericPage
  include RSpec::Matchers
  attr_accessor :browser

  

  def initialize(browser)
    @b = browser
  end
  
  def submit
    @b.button(:class, "create_post_button").click
  end
end
  