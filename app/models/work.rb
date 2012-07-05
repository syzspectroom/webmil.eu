class Work < ActiveRecord::Base
  attr_accessible :description, :main_image, :remove_main_image,:main_image_cache, :main_image_asset, :name, :short_description, :slug, :url, :pictures_attributes

  mount_uploader :main_image, MainImageUploader
  has_many :pictures, dependent: :destroy
  accepts_nested_attributes_for :pictures
end
# == Schema Information
#
# Table name: works
#
#  id                :integer(4)      not null, primary key
#  name              :string(255)
#  url               :string(255)
#  main_image        :string(255)
#  short_description :string(255)
#  description       :string(255)
#  slug              :string(255)
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#

