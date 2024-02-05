# frozen_string_literal: true

list = ["A", "B", "C", "D", "E"]

str_1 = gets.chomp.chars
str_2 = gets.chomp.chars

if (list.index(str_1[0]) - list.index(str_1[1])).abs == 1 || (list.index(str_1[0]) - list.index(str_1[1])).abs == 4
  if (list.index(str_2[0]) - list.index(str_2[1])).abs == 1 || (list.index(str_2[0]) - list.index(str_2[1])).abs == 4
    puts "Yes"
  else
    puts "No"
  end
else
  if (list.index(str_2[0]) - list.index(str_2[1])).abs != 1 && (list.index(str_2[0]) - list.index(str_2[1])).abs != 4
    puts "Yes"
  else
    puts "No"
  end
end
