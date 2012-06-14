class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :name
      t.string :url
      t.string :main_image
      t.text :short_description
      t.text :description
      t.string :show_on_mine_page
      t.string :pictures_attributes
      t.string :slug
      t.datetime :created_at
      t.datetime :updated_at
      t.boolean :show_on_main_page

      t.timestamps
    end
  end
end
