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

end