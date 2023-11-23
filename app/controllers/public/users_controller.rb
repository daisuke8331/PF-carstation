class Public::UsersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = current_customer
    @experiences = Experience.all
  end

  def leave
    @customer = current_customer
  end

  def update
    @customer = current_customer
    @customer.update(customer_params)
    redirect_to user_path
  end

  def withdraw
    @customer = current_customer
    @customer.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end

  private
  def customer_params
     params.require(:customer).permit(:name, :name_kana, :telephone_number, :email, :experience_id )
  end
end
