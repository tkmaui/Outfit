class Admin::CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end
  
  def show
    @customer = Customer.find(params[:id])
    @outfits = @customer.outfits
    @questions = @customer.questions
  end
  
  def edit
    @customer = Customer.find(params[:id])
  end
  
  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to admin_customer_path(@customer.id)
  end
  
  private

  def customer_params
    params.require(:customer).permit(:nickname, :profile_image, :gender, :tall, :introduction)
  end
end