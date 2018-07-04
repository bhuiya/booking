Rails.application.routes.draw do
  devise_for :admins, controllers: {
        sessions: 'admins/sessions'
      }

   devise_for :users, controllers: {
     registrations: 'users/registrations',
       sessions: 'users/sessions'
   }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :home
  resources :userhome
  resources :bookings do
    resources :booking_customers, only: [:new, :create, :show, :edit]
  end

  root :to => 'home#index'

end
