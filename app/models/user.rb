class User < ApplicationRecord
  has_many :scores
  has_many :comments
  has_many :games, through: :scores
  has_many :games, through: :comments

  before_save {self.name = name.capitalize }

  validates :name, :username, :password, presence: true
  validates :username,  uniqueness: true



end
