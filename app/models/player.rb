class Player < ActiveRecord::Base
  has_many :players_stats
  has_many :games, through: :players_stats
end
