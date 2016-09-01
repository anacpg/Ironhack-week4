class AddColumnsProduct2 < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :title, :string
    add_column :products, :description, :string
    add_column :products, :deadline,  :datetime
    add_column :products, :user_id, :integers
  end
end
