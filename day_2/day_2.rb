data = {oponent: {A: {name:'Rock', points: 1}, B:{name: 'Paper', points: 2}, C:{ name: 'Scissors', points: 3}},
  player: {X: {name:'Rock', points: 1}, Y:{name: 'Paper', points: 2}, Z:{ name: 'Scissors', points: 3}}
}
#oponent_input = ['A', 'B', 'C']
#player_input = ['Y', 'X', 'Z']
oponent_data = data.dig(:oponent)
player_data = data.dig(:player)
ary_opp = []
ary = []
oponent_input.each_with_index do |oponent, index|
  player = player_input[index]
  #ary_opp<< oponent_data.dig(oponent.to_sym).dig(:points)
  #ary<< player_data.dig(player_input[index].to_sym).dig(:points) 
#  if (oponent == 'A' && player == 'Y') || (oponent == 'B' && player == 'Z') || (oponent == 'C' && player == 'X')
#    ary.append(6)
#  elsif oponent_data.dig(oponent.to_sym).dig(:name) == player_data.dig(player_input[index].to_sym).dig(:name) 
#    ary.append(3)
#  end

  if player == 'Y'
    points = oponent_data.dig(oponent.to_sym).dig(:points)
    ary << points
    ary.append(3)
  elsif player == 'Z'
     if (oponent == 'A') 
      player_data_u = 'Y'
    elsif(oponent == 'B')
      player_data_u = 'Z'
    elsif (oponent == 'C')
      player_data_u = 'X'
    end
    ary<< player_data.dig(player_data_u.to_sym).dig(:points) 
    ary.append(6)
  else 
    if (oponent == 'A') 
      player_data_u = 'Z'
    elsif(oponent == 'B')
      player_data_u = 'X'
    elsif (oponent == 'C')
      player_data_u = 'Y'
    end
    ary<< player_data.dig(player_data_u.to_sym).dig(:points) 
  end
end
#puts ary_opp
puts ary.inject(:+)