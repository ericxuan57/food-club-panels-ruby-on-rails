class AddFavoriteToBranch < ActiveRecord::Migration[5.1]
  def change
    add_column :branches, :is_favorite, :boolean
  end
end
