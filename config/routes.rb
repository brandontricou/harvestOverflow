HarvestOverflow::Application.routes.draw do
  resources :agencies
  resources :overflows

  root "overflows#index"
end
