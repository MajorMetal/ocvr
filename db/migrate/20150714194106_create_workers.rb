class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name
      t.string :img
      t.string :bio
      t.string :custom_class, default: ''

      t.timestamps null: false
    end
  end
end
