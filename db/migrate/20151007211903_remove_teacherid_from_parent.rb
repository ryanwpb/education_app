class RemoveTeacheridFromParent < ActiveRecord::Migration
  def change
      remove_column :parents, :teacher_id
  end
end
