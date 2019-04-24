class ProjectsController < ApplicationController
  def new
    @project = Project.new
    @project.members.build
  end

  def show
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)
    if @project.save
       flash[:success] = "Welcome to Sun Asterisk Project"
      redirect_to @project
    else
      flash[:success] = "Welcome to Sun Asterisk Project"
      render 'new'
    end
  end

  def index
    @projects = Project.all 
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.members.build
    
  if @project.save
    @project.members << Member.find(params[:project][:nember])
    flash[:success] = "Welcome to Sun Asterisk Project"
      redirect_to project_url
     else
      render 'edit'
    end
  end

  private
    def project_params
      params.require(:project).permit(:name, :content, :skill,:status,:member,:member_ids)
    end

    def member_params
      params.require(:member).permit(:member_ids)
    end
end