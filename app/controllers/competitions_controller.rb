class CompetitionsController < ApplicationController
  def index
    competition1 = Competition.new(name: "WC", date: '2022-06-14')
    competition2 = Competition.new(name: "Laudetour Sió", date: '2021-06-14')
    @competitions = [competition1, competition2]
  end

  def new
  end

  def edit
    @competition = Competition.new(name: "WC", date: '2022-06-14')
  end
end
