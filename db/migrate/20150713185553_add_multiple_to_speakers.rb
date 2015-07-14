class AddMultipleToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :is_featured, :boolean, default: false
    add_column :speakers, :class, :string, default: ''
  end
end
