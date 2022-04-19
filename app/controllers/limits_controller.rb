class LimitsController < ApplicationController
  def show
    @limits = Limit.all
  end
end
