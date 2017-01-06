class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
    	t.string :username 
    	t.string :firstname 
    	t.string :lastname
    	t.integer :phonenumber
    	t.string :email
    	t.string :currency
    	t.decimal :amount

      t.references :users, foreign_key: true
      t.timestamps
    end
  end
end
