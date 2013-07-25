class RenameColumnsWork < ActiveRecord::Migration
  def change
    change_table :works do |t|
      t.rename :name, :name_en
      t.rename :short_description, :short_description_en
      t.rename :description, :description_en
    end
  end

end
