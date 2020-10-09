class AddMapInfoToBoards < ActiveRecord::Migration[6.0]
  def change
    add_column :boards, :address, :string
    add_column :boards, :latitude, :float
    add_column :boards, :longitude, :float
  end
end
