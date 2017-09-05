class ActionFiguresController < ApplicationController
  # def action_figures_action
  #   @action_figure = ActionFigure.first
  #   render 'action_figures_page.html.erb'
  # end

  # def all_action_figures_action
  #   @action_figures = ActionFigure.all
  #   render 'all_action_figures_page.html.erb'
  # end

  def index
    @action_figures = ActionFigure.all

  end

  def new
    
  end

  def create
    action_figure = ActionFigure.new(
                                    name: params[:name],
                                    description: params[:description],
                                    image: params[:image],
                                    price: params[:price]
                                    )
    action_figure.save
  end


  def show
    @action_figure = ActionFigure.find(params[:id])
  end

end
