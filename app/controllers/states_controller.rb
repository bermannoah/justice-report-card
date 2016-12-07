class StatesController < ApplicationController
  def index
    @states = State.all
    @issues = Issue.all
  end
end
