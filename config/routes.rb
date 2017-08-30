Rails.application.routes.draw do
  get '/action_figures_url' => 'action_figures#action_figures_action'
  get '/all_action_figures_url' => 'action_figures#all_action_figures_action'
end
