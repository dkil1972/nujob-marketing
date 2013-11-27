class BlogController < ApplicationController




def index

  require "net/http"
  require "uri"
  uri = URI.parse("http://api.osmek.com/feed")
  response = Net::HTTP.post_form(uri, {"api_key" => "8ytjaEzRiIrPl1meNC5UTfpnhO7vWKYB", "bin_id" => "8948" , "format" => "html"})
  
  $res = response.body
end

end