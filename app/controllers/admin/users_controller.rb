class Admin::UsersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
    @experiences = Experience.all
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to admin_user_path
  end

  def withdraw
    @customer = Customer.find(params[:id])
    @customer.update(is_deleted: true)
    reset_session
    redirect_to admin_user__path
  end

  def customer_params
    params.require(:customer).permit(:name, :name_kana, :email, :telephone_number, :email, :is_deleted)
  end

end
