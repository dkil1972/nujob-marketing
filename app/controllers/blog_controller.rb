class BlogController < ApplicationController


  require "net/http"
  require "uri"
  require 'json'
  uri = URI.parse("http://api.osmek.com/feed")
  response = Net::HTTP.post_form(uri, {"api_key" => "8ytjaEzRiIrPl1meNC5UTfpnhO7vWKYB", "bin_id" => "8948" , "format" => "json"})
  $blog_entries = JSON.parse(response.body)
  $res = response.body
  
def index

  
  require 'will_paginate/collection'
  @posts= $blog_entries['items']

  
  current_page=(params[:page] ||= 1).to_i
   
   @page_results = WillPaginate::Collection.create(current_page, 5,@posts.length) do |pager|
   pager.replace(@posts.to_a[(current_page-1)*5, current_page* 5])
   end
   
end



def show
@posts= $blog_entries['items']
for post in @posts
if post['url_title'] == params[:id]
$res=post
end
end

end

end