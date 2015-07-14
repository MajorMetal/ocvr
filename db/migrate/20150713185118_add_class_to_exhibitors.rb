class AddClassToExhibitors < ActiveRecord::Migration
  def change
    add_column :exhibitors, :custom_class, :string, default: ''
  end
end
