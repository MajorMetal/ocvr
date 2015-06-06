class CreateExhibitors < ActiveRecord::Migration
  def change
    create_table :exhibitors do |t|
      t.string :name
      t.text :bio
      t.string :img

      t.timestamps null: false
    end
  end
end
