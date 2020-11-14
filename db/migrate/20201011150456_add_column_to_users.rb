class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :history, :string
  end
end
