class HomeController < ApplicationController
  
  def index
    @title = 'nujob - grow your team'
  end
  
  def testimonials
    @title = 'nujob - what our customers say'
  end

  def tour
     @title = 'nujob - take the tour'
  end

  def pricing
     @title = 'nujob - pricing'
  end  

  def contact
    @title = 'nujob - contact us'
    @reason_param = params[:reason]
    
    if (@reason_param == 'trial')
      @reason = "Hi Andy/Dermot - I am interested in building my talent pool with nujob. I'd like to trial it. \n\nLet's have a chat - Please Phone / Email me"
    end
  end

  def careers
  end

  def page_not_found
    @title = 'nujob - 404'
    respond_to do |format|
      format.html { render template: 'home/not_found_error', layout: 'layouts/application', status: 404 }
      format.all  { render nothing: true, status: 404 }
    end
  end  
end
