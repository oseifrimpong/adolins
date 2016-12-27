class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
    	t.string :username, null: false 
    	t.string :firstname, null: false
    	t.string :lastname, null: false
    	t.integer :phonenumber
    	t.number :accountnumber
    	t.string :email
    	t.string :currency
    	t.decimal :amount
      t.timestamps
    end
  end
end
