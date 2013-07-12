class Contact
  include ActiveModel::Model
  attr_accessor :name, :email, :title, :body, :category

  validates :name, :title, :body, presence: true
  validates :email, presence: true, format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end
