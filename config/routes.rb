Rails.application.routes.draw do
  # get '/action_figures_url' => 'action_figures#action_figures_action'
  # get '/all_action_figures_url' => 'action_figures#all_action_figures_action'
  get '/' => 'action_figures#index'
  get '/action_figures' => 'action_figures#index'

  get '/action_figures/new' => 'action_figures#new'
  post '/action_figures' => 'action_figures#create'

  get '/action_figures/:id' => 'action_figures#show'
end
