class User < ApplicationRecord
  has_many :microposts
  before_save {email.downcase!}
  validates :name, presence: true, length: {maximum: 50}
  validates :email, presence: true, uniqueness: true, length: {maximum: 200}, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}

  # scope :find_name, -> (name) {where(name: name)}
  has_secure_password
end
