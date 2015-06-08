class AddFeaturedToExhibitors < ActiveRecord::Migration
  def change
    add_column :exhibitors, :is_featured, :bool, default: false
  end
end
