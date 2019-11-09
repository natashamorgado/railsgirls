Rails.application.routes.draw do
    root 'posts#index'
    resources :posts
    get 'publicar-post/:id' => 'posts#publicar', as: 'publicar'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
