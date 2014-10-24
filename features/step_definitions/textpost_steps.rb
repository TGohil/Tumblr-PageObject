Given(/^I am signed into tumblr and on the dashboard$/) do
  @page = TumblrText.new @b
  @page.visit
  
  @page.login
end

And(/^I have chosen the Text Post option$/) do
  @page.text_post_button
end

When(/^the text post window pops up$/) do
  sleep(2)
end

When(/^I entered the manditory fields for the text post$/) do
  @page.text_post_details
end

Then(/^I should see the text post on my dashboard after sumitting it$/) do
  @page.submit
  @b.div(:class, "post_wrapper").wait_until_present
  
  if @b.div(:class, "post_title").text == "Test Post Watir"
    puts "Success!"
  end
end
