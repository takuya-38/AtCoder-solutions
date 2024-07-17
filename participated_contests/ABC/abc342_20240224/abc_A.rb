chars = gets.chomp.chars

tmp = ""
chars.each_with_index do |c, i|
  if i == 0
    tmp = c
    next
  end

  if tmp == c
    next
  else
    if chars[i + 1] == c
      puts i
      break
    else
      puts i + 1
      break
    end
  end
end
