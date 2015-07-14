class AddMultipleToSponsors < ActiveRecord::Migration
  def change
    add_column :sponsors, :site, :string
    add_column :sponsors, :custom_class, :string, default: ''
  end
end
