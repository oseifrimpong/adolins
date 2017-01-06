class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :description, null: true

      t.references :payments, foreign_key: true
      t.timestamps
    end
  end
end
