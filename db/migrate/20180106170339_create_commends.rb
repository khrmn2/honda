class CreateCommends < ActiveRecord::Migration
  def change
    create_table :commends do |t|
      t.string :model
      t.string :yıl
      t.string :motor
      t.string :content

      t.timestamps null: false
    end
  end
end
