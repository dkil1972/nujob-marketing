NujobMarketing::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'home#index'
  get "/testimonials" => "home#testimonials"
  get "/tour" => "home#tour"
  get "/pricing" => "home#pricing"
  get "/blog" => "home#blog"
  get "/contact" => "home#contact"

  resources :messages, :only => [:create]
end
