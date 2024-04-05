class CanoesController < ApplicationController
  def index
    canoe1 = Canoe.new(name: "Canoe 1", max_crew: 2)
    canoe2 = Canoe.new(name: "Canoe 2", max_crew: 4)
    @canoes = [canoe1, canoe2]
  end

  def new
    @canoe = Canoe.new
  end

  def edit
    @canoe = Canoe.new name: 'Tina', max_crew: 4
  end
end
