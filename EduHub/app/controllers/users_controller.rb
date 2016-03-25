class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end
  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html { redirect_to :root, notice: "It's your first time here!" }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
  end

  def login
      @user = User.find_by! UID: user_params[:UID]
      if @user && @user.authenticate(user_params[:user][:password])
        session[:user_id] = @user.id
        format.html { redirect_to :root, notice: "Welcome back #{@user.name}!" }
      else
        render :new
      end 
  end

  def logout
    session[:user_id] = nil
    redirect_to :root
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :UID, :address, :password)
    end
end
