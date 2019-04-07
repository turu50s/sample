class UsersController < ApplicationController
  def index
    @message = "Hello Wrold!!"
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    User.create(user_params)
    redirect_to :action => "index"
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to :action => "index"
  end

  def destroy
    user = User.find(params[:id])
    user.delete
    redirect_to :action => "index"
  end

  def search
    # user_search = UserSearch.new(params_user_search)
    # @users = user_search.execute
    @q = User.ransack(params[:q])
    @users = @q.result
  end

  private
    def user_params
      params.require(:user).permit(:name, :age, :address, :image)
    end
    
    def params_user_search
      params.permit(:search_name, :search_age, :search_address)
    end
end
