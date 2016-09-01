class AddUserIdToTwots < ActiveRecord::Migration
  def change
    add_column :twots, :user_id, :integer
  end
end
