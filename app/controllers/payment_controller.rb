class PaymentController < ApplicationController
   # before_action :authenticate_user!
  def index
    @payment = Payment.all
  end

  def create
    @payment = Payment.new(payment_params)
  end

  def new
    @payment = Payment.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def delete
  end

  private

  def payment_params
    params.require(:payment).permit(:username, :firstname, :lastname, :phonenumber, :email)
  end
end
