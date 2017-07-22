Rails.application.routes.draw do
  resources :departments  do
    resources :members
    resources :apparatus
    resources :alarms	
  end
  resources :member_types
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
