Rails.application.routes.draw do
  scope :admin do
    get '/', to: 'admin#index', as: :admin
    get '/show/:id', to: 'admin#show', as: :admin_tree
    resources :sections
    resources :pages
  end

end
