HarvestOverflow::Application.routes.draw do
  resources :overflows

  resources :agencies

  root "overflows#index"
end
