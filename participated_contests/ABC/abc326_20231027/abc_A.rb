chars = gets.chomp.chars
flag = true

chars.each_with_index do |c, i|
  if i == 0
    if c == c.upcase
      next
    else
      flag = false
    end
  else
    if c != c.upcase
      next
    else
      flag = false
    end
  end
end

puts flag ? "Yes" : "No"
