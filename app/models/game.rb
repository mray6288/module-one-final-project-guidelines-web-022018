class Game < ActiveRecord::Base
  has_many :players
  has_many :actual_stats, through: :players
  has_many :projected_stats, through: :players
end
