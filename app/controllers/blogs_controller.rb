class BlogsController < ApplicationController

  def index
    @current_page = params[:page].to_i || 0
    start = @current_page * Constants::PER_PAGE
    response_first = HTTParty.post("http://api.osmek.com/feed/jsonp",
      :query => {:api_key=> Constants::OSMEK_API,
      :section_id => Constants::SECTION_ID,
      :limit => "1"
      }
    )
    response_last = HTTParty.post("http://api.osmek.com/feed/jsonp",
      :query => {:api_key=> Constants::OSMEK_API,
      :section_id => Constants::SECTION_ID,
      :limit => "1",
      :order_by => "date asc"
      }
    )
    response = HTTParty.post("http://api.osmek.com/feed/jsonp",
      :query => {:api_key=> Constants::OSMEK_API,
      :section_id => Constants::SECTION_ID,
      :limit => Constants::PER_PAGE,
      :start => start
      }
    )

    @status = JSON.parse(response[/{.+}/])["status"]
    if @status != "fail"
      @first_item_id = JSON.parse(response_first[/{.+}/])["items"][0]["id"]
      @last_item_id = JSON.parse(response_last[/{.+}/])["items"][0]["id"]
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

  def show
     
    # if request.path_info.include?('You-have-45-minutes-complete-the-coding')
    if request.path_info.include?('xxx')
      redirect_to '/blog/You-have-45-minutes-to-complete-the-coding-challenge?id=59308', :status => 301
    end
    
    if params[:id] = nil
      redirect_to '/blog'
    end
        
    response = HTTParty.post("http://api.osmek.com/feed/jsonp",
      :query => {:api_key=> Constants::OSMEK_API,
      :section_id => Constants::SECTION_ID,
      :item_id => params[:id]
      }
    )

    @status = JSON.parse(response[/{.+}/])["status"]
    if @status != "fail"
      @item = JSON.parse(response[/{.+}/])["items"][0]
    else
      @error = JSON.parse(response[/{.+}/])["msg"]
    end
    rescue Exception => e
      @error = e.message    
  end
  
end
