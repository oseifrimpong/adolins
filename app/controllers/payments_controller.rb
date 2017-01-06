class PaymentsController < InheritedResources::Base

  private

    def payment_params
      params.require(:payment).permit(:firstname, :lastname, :phonenumber, :email, :currency, :amount)
    end
end

