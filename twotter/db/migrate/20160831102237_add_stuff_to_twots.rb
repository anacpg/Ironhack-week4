class AddStuffToTwots < ActiveRecord::Migration
  def change
    add_column :twots, :description, :text
    add_column :twots, :active, :boolean
    add_column :twots, :link, :string
    add_column :twots, :twot_number, :integer
  end
end
