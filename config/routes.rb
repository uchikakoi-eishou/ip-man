Rails.application.routes.draw do
  get 'post/show/:id'           => 'post#show'
  get 'post/index/:ip_address3' => 'post#index'
  get '/'                       => 'home#top'
  get 'about'                   => 'home#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
