class Category < ActiveRecord::Base
  has_many :articles, dependent: :destroy
  validates :name, presence: true, uniqueness: true

  extend FriendlyId
  friendly_id :name, use: :slugged

  def featured_article
    articles.featured.first
  end

  def common_articles
    articles.where.not(id: featured_article.id)
  end
end
