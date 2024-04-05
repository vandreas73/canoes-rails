class CrewController < ApplicationController
  def index
    crew_member1 = CrewMember.new(name: 'András Vesztergombi', age: 22)
    crew_member2 = CrewMember.new(name: 'Gábor Szabó', age: 25)
    @crew = [crew_member1, crew_member2]
  end

  def new
  end

  def edit
    @crew_member = CrewMember.new(name: 'András Vesztergombi', age: 22)
  end

  def del
  end
end
