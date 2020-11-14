Rails.application.routes.draw do
  get 'blogs/index'
  get 'blogs/show'
  get 'blogs/new'
  get 'blogs/edit'
   resources :blogs
   
   post 'todolists' => 'todolists#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
