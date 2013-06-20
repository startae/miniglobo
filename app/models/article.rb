class Article < ActiveRecord::Base
  belongs_to :category
  mount_uploader :image, ImageUploader
  validates :title, :summary, :image, :category, presence: true
end
