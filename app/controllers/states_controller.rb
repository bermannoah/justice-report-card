class StatesController < ApplicationController
  def index
    @regions = Region.all
    @issues = Issue.all
  end
end
