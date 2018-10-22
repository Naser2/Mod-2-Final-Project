class RollDice < ApplicationRecord

  has_many :scores
  has_many :comments
  has_many :users, through: :scores
  has_many :users, through: :comments


  attr_accessor :roll, :input

  # def initialize(input)
  #   @roll = rand(1..6)
  #   @input = input
  # end
def make_rand_num
  @roll=rand(1..6)
end

def get_input(input)
  @input=input
end 


  def compare

    if @roll == @input
      "Correct!"
    else
      "Wrong! Dice played #{@roll}."
    end

  end

end

# add functionality to increase score
