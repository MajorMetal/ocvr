class AddClassToExhibitors < ActiveRecord::Migration
  def change
    add_column :exhibitors, :class, :string, default: ''
  end
end
