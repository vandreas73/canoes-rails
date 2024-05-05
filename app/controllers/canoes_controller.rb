class CanoesController < ApplicationController
  def index
    @canoes = Canoe.all
  end

  def new
    @canoe = Canoe.new
  end

  def edit
    @canoe = Canoe.find(params[:id])
  end

  def update
    @canoe = Canoe.find(params[:id])
    @canoe.update(canoe_params)
    redirect_to canoes_index_path
  end

  def destroy
    @canoe.destroy!
  end

  def create
    @canoe = Canoe.new(canoe_params)
    @canoe.save
    redirect_to canoes_index_path
  end

  private
    def canoe_params
      params.require(:canoe).permit(:name, :max_crew)
    end

end