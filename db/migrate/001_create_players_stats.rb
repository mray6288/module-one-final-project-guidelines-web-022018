class CreatePlayersStats < ActiveRecord::Migration
  def change
    create_table :players_stats do |t|
                :Date
                :Name
                :Team
                :Projected_PTS
                :Actual_PTS
                :Projected_REB
                :Actual_REB
                :Projected AST
                :Actual AST
                :Projected TOV
                :Actual TOV
                :Projected STL
                :Actual STL
                :Projected BLK
                :Actual BLK
                :Projected FG3A
                :Actual FG3A
                :Projected PF
                :Actual PF
                :Projected FGM
                :Actual FGM
                :Projected FGA
                :Actual FGA
                :Projected OREB
                :Actual OREB
                :Projected FTA
                :Actual FTA

    end
