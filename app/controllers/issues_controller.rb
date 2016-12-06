class IssuesController < ApplicationController
  def index
    @issues = Issue.all
  end

  def show
    @state = State.find(params[:state_id])
    @issue = Issue.find(params[:id])
    @legislation = Legislation.where(issue_id: @issue.id,
                                     state_id: params[:state_id])
  end
end
