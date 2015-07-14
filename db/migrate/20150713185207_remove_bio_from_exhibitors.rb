class RemoveBioFromExhibitors < ActiveRecord::Migration
  def change
    remove_column :exhibitors, :bio, :string
  end
end
