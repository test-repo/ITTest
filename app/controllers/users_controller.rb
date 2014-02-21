class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
      if @user.save
        auto_login(@user)
        redirect_to startup_path     #start the test
        flash[:success] = 'Signed up'
      else
        render :new
      end
  end

# DEF DESTROY IN THIS MOMENT UNUSING
#
#  def destroy
#    @user = User.find(params[:id])
#    @user.destroy

#    respond_to do |format|
#      format.html { redirect_to users_url }
#      format.json { head :no_content }
#    end
#  end
end
