class TumblrText < GenericPage
  

  def visit
    @b.goto "tumblr.com/login"
  end
  
  def login
    @b.text_field(:id, "signup_email").set "tgohil@testingcircle.com"
    @b.text_field(:id, "signup_password").set "abcd1234"
    @b.button(:id, "signup_forms_submit").click
  end
  
  def text_post_button
    #@b.element(:id, "new_post_label_text").wait_until_present
    @b.element(:id, "new_post_label_text").click
  end
  
  def text_post_details
    @b.send_keys("This is a test post")
    @b.text_field(:name, "post[one]").set("Test Post Watir")
  end

end
