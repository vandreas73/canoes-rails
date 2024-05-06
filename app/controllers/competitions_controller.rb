class CompetitionsController < ApplicationController
  def index
    @competitions = Competition.where(canoe_id: params[:canoe_id])
  end

  def new
    @competition = Competition.new
  end

  def edit
    @competition = Competition.find(params[:id])
  end

  def update
    @competition = Competition.find(params[:id])
    @competition.update(competition_params)
    redirect_to competition_index_path(@competition.canoe_id)
  end

  def create
    @competition = Competition.new(competition_params)
    @competition.save
    redirect_to competition_index_path(params[:canoe_id])
  end

  private
    def competition_params
      params.require(:competition).permit(:name, :date, :canoe_id)
    end
end
