class CompetitionsController < ApplicationController
  def index
    @competitions = Competition.where(canoe_id: params[:canoe_id])
  end

  def new
    @competition = Competition.new
  end

  def edit
    @competition = Competition.new(name: "WC", date: '2022-06-14')
  end
end
