class Category < ActiveRecord::Base
  has_many :articles, dependent: :destroy
  validates :name, presence: true

  def featured_article
    articles.where(featured: true).order(created_at: :desc).first
  end
end
