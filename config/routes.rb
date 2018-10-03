Rails.application.routes.draw do
  resources :funds

  get  '/funds/:id/new/', to: "funds#new",     as: "new_child_fund"
  post '/funds/:id/',     to: "funds#create", as: "create_child_fund"
end
