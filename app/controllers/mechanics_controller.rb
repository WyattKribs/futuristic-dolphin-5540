class MechanicsController < ApplicationController

  def index
    @mechanics = Mechanic.all
  end

  def avg_exp
    Mechanic.average(:years_of_experience)
  end

end
