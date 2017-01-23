class PaymentsController < InheritedResources::Base
	require 'http'
	require 'uri'

	uri = URI.parse("https://sandbox.expresspaygh.com/api/submit.php")

  private
    def payment_params
      params.require(:payment).permit(:firstname, :lastname, :phonenumber, :email, :currency, :amount)
    end
end

