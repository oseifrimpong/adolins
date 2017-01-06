class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.string :firstname
      t.string :lastname
      t.string :phonenumber
      t.string :email
      t.string :currency
      t.decimal :amount
      t.references :order, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
