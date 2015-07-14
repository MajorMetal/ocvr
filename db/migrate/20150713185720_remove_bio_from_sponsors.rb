class RemoveBioFromSponsors < ActiveRecord::Migration
  def change
    remove_column :sponsors, :bio, :string
  end
end
