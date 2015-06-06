class AddSiteToExhibitors < ActiveRecord::Migration
  def change
    add_column :exhibitors, :site, :string
  end
end
