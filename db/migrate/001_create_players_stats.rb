class CreatePlayersStats < ActiveRecord::Migration[4.2]
  def change

    create_table :players_stats do |t|
          t.integer :game_number
          t.datetime :date
          t.string :name
          t.string :team
          t.string :opponent
          t.integer :projected_pts
          t.integer :actual_pts
          t.integer :projected_reb
          t.integer :actual_reb
          t.integer :projected_ast
          t.integer :actual_ast
          t.integer :projected_tov
          t.integer :actual_tov
          t.integer :projected_stl
          t.integer :actual_stl
          t.integer :projected_blk
          t.integer :actual_blk
          t.integer :projected_fg3a
          t.integer :actual_fg3a
          t.integer :projected_pf
          t.integer :actual_pf
          t.integer :projected_fgm
          t.integer :actual_fgm
          t.integer :projected_fga
          t.integer :actual_fga
          t.integer :projected_oreb
          t.integer :actual_oreb
          t.integer :projected_fta
          t.integer :actual_fta
          t.integer :game_id
          t.integer :player_id
        end
      end
    end
