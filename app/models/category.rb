class Category < ActiveRecord::Base
  has_many :articles, dependent: :destroy
  validates :name, presence: true
end
