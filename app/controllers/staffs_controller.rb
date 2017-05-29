class StaffsController < ApplicationController
   layout 'dashboard'
  
  def index
    @staffers = User.all
    @count = User.count
  end
 
  def show
    @staffs = User.find(params[:id])
  end
 
  def new
    @staffs = User.new
  end
 
  def edit
    @staffs = User.find(params[:id])
  end
 
  def create
    @staffs = User.new(staffs_params)
    if @staffs.save
      redirect_to staffs_path
    else
      render 'new'
    end
  end
 
  def update
    @staffs = User.find(params[:id])
 
    if @staffs.update(staffs_params)
      redirect_to @staffs
    else
      render 'edit'
    end
  end
 
  def destroy
    @staffs = User.find(params[:id])
    @staffs.destroy
 
    redirect_to staffs_path
  end
 
  private
    def staffs_params
      params.require(:user).permit(:email, :role)
    end
end
