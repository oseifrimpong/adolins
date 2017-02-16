json.extract! payment, :id, :firstname, :lastname, :phonenumber, :email, :currency, :amount, :created_at, :updated_at
json.url payment_url(payment, format: :json)