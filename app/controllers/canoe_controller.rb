class CanoeController < ApplicationController
  def new
    @canoe = Canoe.new
  end

  def edit
    @canoe = Canoe.new name: 'Tina', max_crew: 4
  end

  def del
  end
end
