class RemoveParentidFromStudent < ActiveRecord::Migration
  def change
    remove_column :students, :parent_id
  end
end
