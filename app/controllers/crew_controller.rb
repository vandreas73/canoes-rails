class CrewController < ApplicationController
  def index
    @crew = CrewMember.where(canoe_id: params[:canoe_id])
  end

  def new
    @crew_member = CrewMember.new
  end

  def edit
    @crew_member = CrewMember.find(params[:id])
  end

  def del
  end

  def update
    @crew_member.update(name: params[:name], age: params[:age])
  end
end
