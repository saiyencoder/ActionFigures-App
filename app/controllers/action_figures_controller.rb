class ActionFiguresController < ApplicationController
  def action_figures_action
    @action_figure = ActionFigure.first
    render 'action_figures_page.html.erb'
  end

  def all_action_figures_action
    @action_figures = ActionFigure.all
    render 'all_action_figures_page.html.erb'
  end

end
