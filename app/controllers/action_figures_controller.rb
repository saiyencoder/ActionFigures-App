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
    flash[:success] = "Action Figure Created"
    redirect_to "/action_figures/#{action_figure.id}"
  end


  def show
    @action_figure = ActionFigure.find(params[:id])
  end

  def edit
    @action_figure = ActionFigure.find(params[:id])
  end

  def update
    action_figure = ActionFigure.find(params[:id])

    action_figure.assign_attributes(
                                    name: params[:name],
                                    description: params[:description],
                                    image: params[:image],
                                    price: params[:price]
                                    )

    action_figure.save
    flash[:success] = "Action Figure Updated"
    redirect_to "/action_figures/#{action_figure.id}"
  end

  def destroy
    action_figure = ActionFigure.find(params[:id])
    action_figure.destroy
    flash[:success] = "Action Figure Deleted"
    redirect_to "/action_figures"
  end

end
