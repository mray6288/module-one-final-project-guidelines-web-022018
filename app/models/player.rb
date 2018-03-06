class Player < ActiveRecord::Base
  has_many :games
  has_many :actual_stats, through: :games
  has_many :projected_stats, through: :games
  def find_game
  end
  def evaluate_performance
  end
end
