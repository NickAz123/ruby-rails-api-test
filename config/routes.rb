Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :albums, defaults: {format: JSON}
    end
  end
end
