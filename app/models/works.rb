class Works < ActiveRecord::Base
  attr_accessible :description, :main_image, :name, :short_description, :show_on_main_page, :slug, :url
end
