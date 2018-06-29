Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :admins, controllers: {
		registrations: 'admins/registrations',
		sessions: 'admins/sessions'
	  }
  resource :homes
  root :to => 'home#index'


end
