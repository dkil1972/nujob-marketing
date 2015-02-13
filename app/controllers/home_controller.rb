class HomeController < ApplicationController
  def index
    response = HTTParty.post("http://api.osmek.com/feed/jsonp",
      :query => {
        :api_key=> Constants::OSMEK_API,
        :section_id => Constants::SECTION_ID,
        :limit => Constants::PER_PAGE
      }
    )

    @status = JSON.parse(response[/{.+}/])["status"]
    if @status != "fail"
      @blog_items = JSON.parse(response[/{.+}/])["items"]
      @item_ids = @blog_items.map{|item| item['id']}
    else
      @error = JSON.parse(response[/{.+}/])["msg"]
    end

    rescue Exception => e
      @error = e.message
    ensure
      respond_to do |format|
        format.html
        format.js
      end
  end

  def about
    render :layout => 'product'    
  end
  
  def products
  end
  
  def contact
    @reason_param = params[:reason]
    
    if (@reason_param == 'trial')
      @reason = "Hi Andy/Dermot - I am interested in building my talent pool with nujob. I'd like to trial it. \n\nLet's have a chat - Please Phone / Email me"
    end
  end

  def page_not_found
    respond_to do |format|
      format.html { render template: 'home/not_found_error', layout: 'layouts/application', status: 404 }
      format.all  { render nothing: true, status: 404 }
    end
  end  
end
