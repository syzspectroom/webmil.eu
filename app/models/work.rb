class Work < ActiveRecord::Base
  attr_accessible :created_at, :description, :main_image, :name, :pictures_attributes, :short_description, :show_on_main_page, :show_on_mine_page, :slug, :updated_at, :url
end
