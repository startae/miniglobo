class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :image
      t.text :body
      t.boolean :published, default: true
      t.boolean :featured, default: false

      t.timestamps
    end
  end
end
