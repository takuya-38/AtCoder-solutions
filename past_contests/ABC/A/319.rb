# player_list = {
#   "tourist" => 3858,
#   "ksun48" => 3679,
#   "Benq" => 3658,
#   "Um_nik" => 3648,
#   "apiad" => 3638,
#   "Stonefeang" => 3630,
#   "ecnerwala" => 3613,
#   "mnbvmar" => 3555,
#   "newbiedmy" => 3516,
#   "semiexp" => 3481,
# }

# s = gets.chomp
# puts player_list[s]

player_data = "
tourist 3858
ksun48 3679
Benq 3658
Um_nik 3648
apiad 3638
Stonefeang 3630
ecnerwala 3613
mnbvmar 3555
newbiedmy 3516
semiexp 3481
"

player_hash = {}
player_list = player_data.split("\n")
player_list.each do |player|
  key, value = player.split(" ")
  player_hash[key] = value
end

s = gets.chomp
puts player_hash[s]
