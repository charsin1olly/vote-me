Rails.application.routes.draw do
  resources :candidates

  get'/candidates' ,to: 'candidates#index'
end
