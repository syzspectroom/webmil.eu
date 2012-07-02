class Picture < ActiveRecord::Base
  attr_accessible :image,  :image_cache, :image_asset, :title
  belongs_to :work, inverse_of: :pictures
  mount_uploader :image, ImageUploader
end
# == Schema Information
#
# Table name: pictures
#
#  id         :integer(4)      not null, primary key
#  image      :string(255)
#  title      :string(255)
#  work_id    :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

