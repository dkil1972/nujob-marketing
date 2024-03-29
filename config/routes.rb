NujobMarketing::Application.routes.draw do
  resources :content_items
  get "/training/negotiating-for-contractors" => "training#negotiating_for_contractors"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'home#index'
  get '/about/' => "home#about"
  get '/products/' => "home#products"
  get '/signup/' => "home#sign_me_up"
  get "/testimonials" => "products#testimonials"
  get "/tour" => "products#tour"
  get "/pricing" => "home#pricing"
  get "/contact" => "home#contact"
  get "/careers" => "home#careers"
  get '404', :to => 'home#page_not_found'

  get '/blog/', :to => 'blogs#index', :as => 'blogs'
  get '/blog/:title', :to => 'blogs#show', :as => 'blog'

  
  get "/content_items" => "content_items#index"
  get "/cms" => "content_items#index"

  resources :messages, :only => [:create]
  resources :courses, :only => [:create]

end
