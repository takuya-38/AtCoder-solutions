# frozen_string_literal: true

w_list = gets.chomp.chars
list = []

w_list.each do |c|
  list.include?(c) ? list.delete(c) : list << c
end

puts list.empty? ? 'Yes' : 'No'

#-----------------------------------------------------
# w = gets.chomp.chars.tally
# puts w.all?{|k, v| v.even?} ? "Yes" : "No"
#-----------------------------------------------------
# s = gets.chomp
# puts s.chars.all?{|c| s.count(c).even?} ? 'Yes' :  'No'
