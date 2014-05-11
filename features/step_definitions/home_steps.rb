
Given(/^I have any specific cms test data needed$/) do
  create_content_item("main_title", "main_title_text")
end

Given(/^I go to homepage$/) do
  visit "/"
end

Then(/^I can see homepage$/) do
  page.has_content?("Home")
end

def create_content_item(key, text)
  ContentItem.create(
    key: key,
    text: text,
    page: "Home")
end


