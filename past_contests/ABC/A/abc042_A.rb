# frozen_string_literal: true

def judge_575
  array = gets.split.map(&:to_i)

  five_count = 0
  seven_count = 0

  array.each do |num|
    five_count += 1 if num == 5
    seven_count += 1 if num == 7
  end

  if five_count == 2 && seven_count == 1
    "YES"
  else
    "NO"
  end
end

puts judge_575

# -------------------------------------------------------
# puts gets.split.sort == ['5', '5', '7'] ? :YES : :NO
# -------------------------------------------------------
# A = gets.split(" ").map(&:to_i)
# if A.count(5) == 2 && A.count(7) == 1
#   puts "YES"
# else
#   puts "NO"
# end
# -------------------------------------------------------
