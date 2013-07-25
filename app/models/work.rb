class Work < ActiveRecord::Base
  attr_accessible :description_en, :main_image, :remove_main_image,
  				  :main_image_cache, :main_image_asset, :name_en,
  				  :short_description_en, :slug, :url, :pictures_attributes, :order, :tag,
            :name_uk, :description_uk, :short_description_uk


  mount_uploader :main_image, MainImageUploader
  has_many :pictures, dependent: :destroy
  accepts_nested_attributes_for :pictures

  # validates_format_of :url, :with => URI::regexp
  validates :name_en, presence: true
  validates :slug, presence: true
  validates :url, presence: true

  def name
    self.send "name_#{I18n.locale}"
  end

  def description
    self.send "description_#{I18n.locale}"
  end

  def short_description
    self.send "short_description_#{I18n.locale}"
  end

  def full_url
  	"http://"+url
  end
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
#  description       :string(1000)
#  slug              :string(255)
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#

