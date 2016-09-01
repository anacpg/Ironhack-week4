class AddTimestampsToBird < ActiveRecord::Migration
  def change
    rename_column :birds, :name, :species
  end
end
