class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :uniform, :string
    add_column :users, :position, :string
    add_column :users, :phone, :string
    add_column :users, :history, :string
  end
end
