class AddUkToWork < ActiveRecord::Migration
  def change
    add_column :works, :name_uk, :string
    add_column :works, :description_uk, :text
    add_column :works, :short_description_uk, :string
  end
end
