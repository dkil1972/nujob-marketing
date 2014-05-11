class HomeController < ApplicationController
  helper_method :homepage_item

  def homepage_item(key)
     item = ContentItem.find_or_create_by(:key => key, :page => 'Home')
     
     if (item.text != nil)
       return item.text
     end
     
     first_time_edit_link = "<a href='/content_items/" + item._id + "/edit'>Click to replace</a>" 
     return first_time_edit_link.html_safe
  end
  
  def index
  end
  
  def testimonials
  end

  def tour
  end

  def pricing
  end  

  def contact
  end

  def page_not_found
    respond_to do |format|
      format.html { render template: 'home/not_found_error', layout: 'layouts/application', status: 404 }
      format.all  { render nothing: true, status: 404 }
    end
  end  
end