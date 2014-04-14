class HomeController < ApplicationController


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