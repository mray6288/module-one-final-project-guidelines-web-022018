require 'csv'

CSV.foreach("./players_stats.csv", {encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all}) do |row|
  # binding.pry
  stat = PlayersStat.create(row.to_h)
  player = Player.find_or_create_by(full_name: stat.name)
  game = Game.find_or_create_by(id: stat.game_number)
  stat.game = game
  stat.player = player
  game.players_stats << stat
  player.players_stats << stat
end
