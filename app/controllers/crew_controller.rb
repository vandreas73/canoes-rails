class CrewController < ApplicationController
  def index
    @crew = CrewMember.where(canoe_id: params[:canoe_id])
    @canoe = Canoe.find(params[:canoe_id])
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
    @crew_member = CrewMember.find(params[:id])
    @crew_member.update(crew_member_params)
    redirect_to crew_index_path(@crew_member.canoe_id)
  end

  def create
    @crew_member = CrewMember.new(crew_member_params)
    @crew_member.save
    redirect_to crew_index_path(params[:canoe_id])
  end

  private
    def crew_member_params
      params.require(:crew_member).permit(:name, :age, :canoe_id)
    end
end
