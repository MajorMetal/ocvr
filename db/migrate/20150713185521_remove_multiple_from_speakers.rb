class RemoveMultipleFromSpeakers < ActiveRecord::Migration
  def change
    remove_column :speakers, :title, :string
    remove_column :speakers, :company, :string
  end
end
