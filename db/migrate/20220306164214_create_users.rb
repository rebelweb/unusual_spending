class CreateUsers < ActiveRecord::Migration[7.0]
  def up
    create_table :users do |t|
      t.column :first_name, :string, null: false, length: 25
      t.column :last_name, :string, null: false, length: 50
      t.column :email_address, :string, null: false, length: 255
    end
  end

  def down
    drop_table :users
  end
end
