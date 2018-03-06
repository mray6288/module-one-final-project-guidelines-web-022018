# all player ids
# corresponding projected and actual stats
class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :home_team
      t.string :away_team
      t.datetime :date
