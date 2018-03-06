class Player < ActiveRecord::Base
  has_many :players_stats
  has_many :games, through: :players_stats
  def find_game
  end
  def evaluate_performance
  end
end
