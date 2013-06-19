json.array!(@articles) do |admin_article|
  json.extract! admin_article, :title, :image, :body, :published, :featured
  json.url admin_article_url(admin_article, format: :json)
end
