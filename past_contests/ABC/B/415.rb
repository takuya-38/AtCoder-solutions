S = gets.chars

start_index = 0
S.each_with_index do |char, index|
  if char == "#"
    if start_index.zero?
      start_index = index + 1
    else
      puts "#{start_index},#{index + 1}"
      start_index = 0
    end
  end
end
