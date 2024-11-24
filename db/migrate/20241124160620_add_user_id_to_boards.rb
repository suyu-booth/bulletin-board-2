class AddUserIdToBoards < ActiveRecord::Migration[7.1]
  def change
    add_column :boards, :user_id, :string
    add_column :boards, :integer, :string
  end
end
