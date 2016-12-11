class StatesController < ApplicationController
  def index
    @regions = Region.all
    # @states = State.all
    @issues = Issue.all
  end
end
