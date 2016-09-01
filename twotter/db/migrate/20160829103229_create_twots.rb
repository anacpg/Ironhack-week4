class CreateTwots < ActiveRecord::Migration
  def change
    create_table :twots do |t|
      t.string :body

      t.timestamps null: false
    end
  end
end
