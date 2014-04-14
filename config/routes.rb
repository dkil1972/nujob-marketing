NujobMarketing::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'home#index'
  get "/testimonials" => "home#testimonials"
  get "/tour" => "home#tour"
  get "/pricing" => "home#pricing"
  get "/contact" => "home#contact"
  get '404', :to => 'home#page_not_found'

  resources :messages, :only => [:create]
  resources :blogs, :only => [:index,:show]
  resources :courses, :only => [:create]
end
