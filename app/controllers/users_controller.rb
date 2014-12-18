class UsersController < ApplicationController
def new
  @user = User.new

end

def create
  @user = User.new(user_params)
  @user.save
  if @user.save
    redirect_to root_path
  else
    render :new
  end
end

def show
  @user = User.find(params[:id])
end

def edit
  @user = User.find(params[:id])
  redirect_to users_path

end

def destroy
  @user = User.find(params[:id])
  @user.destroy
  redirect_to users_path notice: "User was succesfully destroyed"

end

def update
  @user = User.find(params[:id])
  if @user.update(user_params)
    redirect_to users_path  notice: "User"
  else
  end
end
private



def user_params
  params.require(:user).permit{
    :first_name
    :last_name
    :email
  }


end

end
