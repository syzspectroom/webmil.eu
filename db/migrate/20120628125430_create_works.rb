class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :name
      t.string :url
      t.string :main_image
      t.string :short_description
      t.string :description
      t.string :slug

      t.timestamps
    end
  end
end
