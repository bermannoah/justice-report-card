class IssuesController < ApplicationController
  def index
    @issues = Issue.all
  end

  def show
    @issue = Issue.find(params[:id])
    @legislation = Legislation.where(issue_id: @issue.id)
  end
end
