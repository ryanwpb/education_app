class AddGradeColumntoGradeTable < ActiveRecord::Migration
  def change
    add_column :grades, :grade, :text

  end
end
