class CreatePayments < ActiveRecord::Migration[7.0]
  def up
    create_table :payments do |t|
      t.column :transaction_date, :datetime, null: false
      t.column :user_id, :integer, null: false
      t.column :account_number, :string, length: 10, null: false
      t.column :amount, :decimal, precision: 6, scale: 2, null: false
      t.column :category, :integer, null: false
    end

    add_foreign_key :payments, :users
  end

  def down
    drop_table :payments
  end
end
