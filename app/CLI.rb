require'table_print'
def greeting
  puts "Hey!"
end
def step_1
  puts "Please enter 'Player' or 'Game'."
  result = gets.chomp
  if result == 'Player'
    find_by_player_name
  elsif result == 'Game'
    find_by_game
  else
    goodbye
  end
end

def find_by_player_name
  puts "Please enter a player's full name"
  resp = gets.chomp
  player = Player.find_by(full_name: resp)
  if !player
    until player || resp == "exit"
      puts "Sorry, a player by that name could not be found. Please enter another name."
      resp = gets.chomp
      player = Player.find_by(full_name: resp)
    end
  elsif resp == "Exit"
    goodbye
  else
    tp player.players_stats
    step_1
  end
end

def find_by_game
  puts "Please enter a date (YYYY-MM-DD)."
  date = gets.chomp
  puts "Please enter the home team."
  home_team = gets.chomp
  puts "Please enter the opposing team."
  opponent = gets.chomp
  game = Game.find_by(date: date).where(home_team: home_team, away_team: opponent)
  if !game
    until game
      puts "Sorry, game could not be found."
      puts "Please enter another date (YYYY-MM-DD)."
      date = gets.chomp
      puts "Please enter home team."
      home_team = gets.chomp
      "Please enter opposing team."
      opponent = gets.chomp
      game = Game.find_by(date: date).where(home_team: home_team, away_team: opponent)
    end
  elsif date == "Exit"
    goodbye
  else
    tp game.players_stats
    step_1
  end
end

def goodbye
  puts "Adios amigo!"
end

def start_cli
  greeting
  step_1
end
