
Given(/^I have cms test data$/) do
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


