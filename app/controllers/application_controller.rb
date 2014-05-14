class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery
  
  helper_method :content_item

  def content_item(page, key)
     item = ContentItem.find_or_create_by(:key => key, :page => page)
     
     if (item.text != nil)
       return item.text
     end
     
     first_time_edit_link = "<a href='/content_items/" + item._id + "/edit'>Click to replace</a>" 
     return first_time_edit_link.html_safe
  end
end
