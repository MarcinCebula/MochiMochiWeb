AppTemplate::Application.routes.draw do

  get "pages" => "pages#index"

  get 'pages/not_found' => "pages#index"
  # get 'pages/flat_ui' => "pages#flatui"

  match "/404", :to => "pages#index"

  root :to => 'pages#index'

end
