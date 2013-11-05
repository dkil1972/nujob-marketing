class SignupController < ApplicationController


layout false

def index

Gibbon::API.new("fd33c108c40e0e2c3a41d0d94a3d5a25-us7").list_subscribe(:id => "7d898b1c7b", :email_address => params[:MERGE0])

end

end
