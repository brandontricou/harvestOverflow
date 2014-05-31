HarvestOverflow::Application.routes.draw do
  devise_for :agencies
  #resources :agencies
  resources :overflows

  root "overflows#index"
end
