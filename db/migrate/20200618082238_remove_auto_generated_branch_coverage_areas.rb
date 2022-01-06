class RemoveAutoGeneratedBranchCoverageAreas < ActiveRecord::Migration[5.2]
  def up
    old_restaurant_ids = Restaurant.where(title: ["Areesh", "Bab Areesh"]).pluck(:id)
    old_branch_ids = Branch.where(restaurant_id: old_restaurant_ids).pluck(:id)
    BranchCoverageArea.where.not(branch_id: old_branch_ids).destroy_all
  end

  def down
  end
end
