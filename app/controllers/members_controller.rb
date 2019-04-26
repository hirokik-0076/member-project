class MembersController < ApplicationController
  before_action :logged_in_user

  def new
    @member = Member.new
  end

  def show
    @member = Member.find(params[:id])
  end

  def create
    @member = Member.new(member_params)
    if @member.save
       flash[:success] = "Welcome to Sun Asterisk!"
      redirect_to @member
    else
      render 'new'
    end
  end

  def index
    @members = Member.search params[:keyword]
  end

  private

    def member_params
      params.require(:member).permit(:name, :profile, :skill,:project,:coment)
    end
end

