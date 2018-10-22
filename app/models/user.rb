class User < ApplicationRecord
  has_many :scores
  has_many :comments
  has_many :games, through: :scores
  has_many :games, through: :comments


end
