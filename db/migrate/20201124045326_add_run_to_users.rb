class AddRunToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :worked_on, :date
    add_column :users, :run, :string
    add_column :users, :rb, :string
    add_column :users, :singl, :string
    add_column :users, :two, :string
    add_column :users, :three, :string
    add_column :users, :characteristic, :string
  end
end
