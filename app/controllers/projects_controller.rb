class ProjectsController < ApplicationController
  def new
    @project = Project.new
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
    @projects = Project.search(params[:search])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
  end

  private
    def project_params
      params.require(:project).permit(:name, :content, :skill,:status,:member)
    end
end