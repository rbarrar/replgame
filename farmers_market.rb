# Outputs a line
def puts_line
  puts "*" * 30
end

# Outputs the game intro
def game_intro
  puts "Welcome to the Farmers Market"
  puts "*" * 30
  puts "What is your name?"
end

# Outputs a random number (0 - 100) and chooses your fate
def roll_dice
  Random.rand(100)
end

def found_smoothie_stand
  puts "you found a smoothie stand... what smoothie will you get... [mango], [stawberry_banana]?"
  input = gets.chomp.downcase
  until input == "roll"
    input = gets.chomp.downcase
  end
  if input == "roll"
    roll = roll_dice
    puts roll
    if roll_dice > 50
      get_mango_smoothie
    else
      get_strawberry_banana_smoothie
    end
  end
end

def found_empanada_stand
  puts "You found an empanada stand."
  input = gets.chomp.downcase
  until input == "roll"
    input = gets.chomp.downcase
  end
  if input == "roll"
    roll = roll_dice
    puts roll
    if roll_dice > 50
      puts "As you approach the empanada stand the chef bombards you with empanadas until you have died."
    else
      puts "you safely grab an empanada, eat it and are full"
      ending
    end
  end
end

def ending
  puts "congratulations you made it through the farmers market without dying!"
end

def get_mango_smoothie
  puts "you got a mango smoothie. can you drink it?"
  input = gets.chomp.downcase
  until input == "roll"
    input = gets.chomp.downcase
  end
  if input == "roll"
    roll = roll_dice
    puts roll
    if roll_dice > 50
      puts "You drank the mango smoothie and feel great."
      ending
    else
      puts "Enemy randomly appears and kills you before you are able to drink smoothie."
    end
  end
end

def get_strawberry_banana_smoothie
  puts "you got a strawberry banana smoothie but it was poisoned and you died."
end


puts game_intro
user_name = gets.chomp.capitalize
puts_line

puts "Welcome to the Farmers Market #{user_name}."
puts "As you enter the farmers market you see a... [smoothie stand], [empanada stand]"

input = gets.chomp.downcase

until input == "roll"
  input = gets.chomp.downcase
end

roll = roll_dice
puts roll
if roll_dice > 50
  found_smoothie_stand
else
  found_empanada_stand
end
