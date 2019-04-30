require 'pry'

def game_hash
  game_hash = {
  
  :home => {:team_name => "Brooklyn Nets", 
  :colors => ["Black","White"], 
  :players =>{"Alan Anderson"=>{:number => 0, :shoe => 16, :points => 22, :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1 },
  "Reggie Evans" => {:number => 30, :shoe => 14, :points => 12, :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7 }, 
  "Brook Lopez" => {:number => 11, :shoe => 17, :points => 17, :rebounds => 19, :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15 },
  "Mason Plumlee" => {:number => 1, :shoe => 19, :points => 26, :rebounds => 12, :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5},
  "Jason Terry" => {:number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}
  }},
  :away => {:team_name => "Charlotte Hornets", 
  :colors => ["Turquoise", "Purple"], 
  :players => {"Jeff Adrien"=>{:number => 4, :shoe => 18, :points => 10, :rebounds => 1, :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2},
  "Bismak Biyombo" => {:number => 0, :shoe => 16, :points => 12, :rebounds => 4, :assists => 7, :steals => 7, :blocks => 15, :slam_dunks => 10},
  "DeSagna Diop" => {:number => 2, :shoe => 14, :points => 24, :rebounds => 12, :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5 },
  "Ben Gordon" => {:number => 8, :shoe => 15, :points => 33, :rebounds => 3, :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0},
  "Brendan Haywood" => {:number => 33, :shoe => 15, :points => 6, :rebounds => 12, :assists => 12, :steals => 22, :blocks => 5, :slam_dunks => 12}
  
  }}  
    
  }
  
end 


def num_points_scored(str_player)
    if game_hash[:home][:players].keys.include?(str_player) 
      return game_hash[:home][:players][str_player][:points]
    else 
      return game_hash[:away][:players][str_player][:points]
    end
end

def shoe_size(str_player)
    if game_hash[:home][:players].keys.include?(str_player) 
      return game_hash[:home][:players][str_player][:shoe]
    else 
      return game_hash[:away][:players][str_player][:shoe]
    end
end

def team_colors(str_team)
    if game_hash[:home][:team_name].include?(str_team) 
      return game_hash[:home][:colors]
    else 
      return game_hash[:away][:colors]
    end
end


def team_names
  names = []
  names.push(game_hash[:home][:team_name])
  names.push(game_hash[:away][:team_name])
  return names
end 



def player_numbers(str_team)
  jerseys = []
 
if game_hash[:home][:team_name].include?(str_team) 
game_hash[:home][:players].each do |key_name, data|
    jerseys.push(data[:number])
end
else
game_hash[:away][:players].each do |key_name, data|
jerseys.push(data[:number])
end
end  

return jerseys

end

def player_stats(str_player)
  if game_hash[:home][:players].include?(str_player)
   return  game_hash[:home][:players][str_player]
  else
    game_hash[:away][:players].include?(str_player)
    return game_hash[:away][:players][str_player]
  end
end

def big_shoe_rebounds
  #Initialize array of shoe_size, rebound pairs, e.g. [shoe, rebounds, shoe, rebounds, shoe, rebounds....etc]
  shoe_rebounds = []

    game_hash[:home][:players].each do |key_name, data|
    shoe_rebounds.push(data[:rebounds])
    shoe_rebounds.push(data[:shoe])
  end 
    game_hash[:away][:players].each do |key_name, data|
    shoe_rebounds.push(data[:rebounds])
    shoe_rebounds.push(data[:shoe])
  end
  
  
  idx = 1
  max_rebounds = 0
  max_idx = 99
 

  shoe_rebounds.each_with_index do |idx, rebounds|
    if max_rebounds < rebounds
      max_rebounds == rebounds
      max_idx == idx 
     end  
     idx+=2
   end
 
  return shoe_rebounds[max_idx-1]
  
end
  