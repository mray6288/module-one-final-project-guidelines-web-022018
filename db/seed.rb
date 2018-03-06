require 'csv'

players_stats = []
CSV.foreach('./players_stats.csv', headers: true) do |row|
  players_stats << PlayersStat.new(row.to_h)
end
PlayersStat.import(players_stats)
