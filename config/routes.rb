NujobMarketing::Application.routes.draw do
  resources :content_items

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'home#index'
  get "/testimonials" => "home#testimonials"
  get "/tour" => "home#tour"
  get "/pricing" => "home#pricing"
  get "/contact" => "home#contact"
  get '404', :to => 'home#page_not_found'

  get '/blog/', :to => 'blogs#index', :as => 'blogs'
  get '/blog/:id', :to => 'blogs#show', :as => 'blog'
  
  get "/content_items" => "content_items#index"
  get "/cms" => "content_items#index"

  resources :messages, :only => [:create]
  resources :courses, :only => [:create]
end
