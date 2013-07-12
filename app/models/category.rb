class Category < ActiveRecord::Base
  has_many :articles, dependent: :destroy
  validates :name, presence: true, uniqueness: true

  extend FriendlyId
  friendly_id :name, use: :slugged

  def featured_article
    articles.where(featured: true).first
  end

  def common_articles
    articles.where('articles.id != ?', featured_article.id)
  end
end
