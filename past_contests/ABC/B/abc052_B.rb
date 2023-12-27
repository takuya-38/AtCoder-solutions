N = gets.to_i
S = gets.scan(/./)
max_count = 0
count = 0

S.each do |s|
  if s == "I"
    count += 1
  else
    count -= 1
  end

  max_count = count if max_count < count
end

puts max_count
