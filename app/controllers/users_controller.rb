class UsersController < ApplicationController

  # def index
  #   @User = User.new
  # end

  
  def new
    #@User = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to [:root], notice: 'User created!'
    else
      render :index
    end
  end

  # def destroy
  #   @category = Product.find params[:id]
  #   @category.destroy
  #   redirect_to [:admin, :products], notice: 'Product deleted!'
  # end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation
    )
  end


end


# class UsersController < ApplicationController
#   def new
#   end

#   def create
 
#     @user = User.new(user_params)
#     puts "Hello #{@user}"
#     if @user.save
#       session[:user_id] = @user.id
#       redirect_to '/'
#     else
#       redirect_to '/'
#     end
#   end

#   private

#   def user_params
#     params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
#   end

# end

