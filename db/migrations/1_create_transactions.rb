Sequel.migration do
  transaction
  up do
    create_table :transactions do
      primary_key :id
      column :user_id, :integer, null: false
      column :transaction_at, :timestamp, null: false
      column :account_number, :varchar, null: false, size: 10
      column :amount, :decimal, size: [6,2], null: false
      column :category, :integer, null: false
    end
  end
end