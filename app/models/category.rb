class Category < ActiveRecord::Base
  has_many :articles, dependent: :destroy
  validates :name, presence: true

  def featured_article
    articles.where(featured: true).first
  end

  def common_articles
    articles.where('articles.id != ?', featured_article.id)
  end

  def to_param
    "#{id} #{name}".parameterize
  end
end
