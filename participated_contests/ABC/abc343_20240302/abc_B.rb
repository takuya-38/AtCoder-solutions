n = gets.to_i
matrix = Array.new(n) {gets.split.map(&:to_i)}

matrix.each do |row|
  output = []
  row.each_with_index do |v, i|
    output << i + 1 if v == 1
  end
  puts output.join(" ")
end
