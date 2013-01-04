class ChangeDescriptionInWorks < ActiveRecord::Migration
  def up
  	change_column :works, :description, :string, :limit => 1000
  end

  def down
  	change_column :works, :description, :string, :limit => 255
  end
end
