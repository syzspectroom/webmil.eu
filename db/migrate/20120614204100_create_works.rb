class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :name
      t.string :url
      t.string :main_image
      t.text :short_description
      t.text :description
      t.boolean :show_on_main_page
      t.string :slug

      t.timestamps
    end
  end
end
