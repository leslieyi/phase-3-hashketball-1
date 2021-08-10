# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
# Build a method, num_points_scored that takes in an argument of a player's name and returns the number of points scored for that player.
def num_points_scored(name)
  points_found = 0
  game_hash[:home][:players].select {|player| 
    if (player[:player_name] == name)
      points_found = player[:points]
    end 
  }
  game_hash[:away][:players].select {|player| 
    if (player[:player_name] == name)
      points_found = player[:points]
    end 
  }
  points_found
end


# Build a method, shoe_size, that takes in an argument of a player's name and returns the shoe size for that player.
def shoe_size(name)
  shoe_size_total = 0
  game_hash[:home][:players].select {|player| 
    if (player[:player_name] == name)
      shoe_size_total = player[:shoe]
    end 
  }
  game_hash[:away][:players].select {|player| 
    if (player[:player_name] == name)
      shoe_size_total = player[:shoe]
    end 
  }
  shoe_size_total

end


# Build a method, team_colors, that takes in an argument of the team name and returns an Array of that team's colors.
def team_colors(name)
  team_color = []
  game_hash.select do |team|
    if game_hash[team][:team_name] == name
      team_color = game_hash[team][:colors]
    end
  end
  team_color
end

# p  team_colors("Brooklyn Nets")
# Build a method, team_names, that operates on the game Hash to return an Array of the team names.
def team_names
  team_array = []
  team_array << game_hash[:home][:team_name] 
  team_array << game_hash[:away][:team_name] 

  team_array

end

# Build a method, player_numbers, that takes in an argument of a team name and returns an Array of the jersey numbers for that team.
def player_numbers(name)
  jersy_array = []
  game_hash[:home][:players].each {|player|
    if game_hash[:home][:team_name] == name
      jersy_array <<  player[:number]
    end 
  }
  game_hash[:away][:players].each {|player|
    if game_hash[:away][:team_name] == name
      jersy_array <<  player[:number]
    end 
  }
  jersy_array
end

# Build a method, player_stats, that takes in an argument of a player's name and returns a hash of that player's stats.
def player_stats(name)
  game_hash[:home][:players].select {|players|
    if players[:player_name] == name
      return players
    end 
  }
  game_hash[:away][:players].select {|players|
    if players[:player_name] == name
      return players
    end 
  }
end 
#  pp player_stats("Alan Anderson")


# Build a method, big_shoe_rebounds, that will return the number of rebounds associated with the player that has the largest shoe size. Break this one down into steps:
def big_shoe_rebounds
  shoe_size = 0 
  player_found = 0

  game_hash[:home][:players].each {|player|
    if shoe_size < player[:shoe]
      shoe_size = player[:shoe]
      player_found = player[:rebounds]
    end 
  }

  game_hash[:away][:players].each {|player|
    if shoe_size < player[:shoe]
      shoe_size = player[:shoe]
      player_found = player[:rebounds]
    end 
  }
  player_found
end 