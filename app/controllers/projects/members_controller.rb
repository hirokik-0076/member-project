class Projects::MembersController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @member = Member.new
  end

  def create
    @project = Project.find(params[:project_id])
    
    if @project.save
      @project.members << Member.find(params[:member][:id])
      flash[:success] = "Add Sun Asterisk Member"
      redirect_to @project
    else
      render 'new'
    end
  end
end
