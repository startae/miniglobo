class Article < ActiveRecord::Base
  belongs_to :category
  mount_uploader :image, ImageUploader
  validates :title, :summary, :image, :category, presence: true
  validates :title, uniqueness: {scope: :category_id}

  has_many :comments

  default_scope -> { order(created_at: :desc) }

  extend FriendlyId
  friendly_id :title, use: :slugged

  def self.featured
    where(featured: true)
  end

  def related
    category.articles.where.not(id: id).limit(3)
  end
end
