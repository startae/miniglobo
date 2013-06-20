class EnsureCategoryForAllArticles < ActiveRecord::Migration
  def up
    Article.find_each do |article|
      unless article.category.present?
        article.update!(category: Category.first)
      end
    end
  end

  def down
  end
end
