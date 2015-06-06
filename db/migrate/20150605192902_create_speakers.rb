class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name
      t.string :title
      t.string :company
      t.text :bio
      t.string :img

      t.timestamps null: false
    end
  end
end
