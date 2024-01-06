N, Q = gets.split.map(&:to_i)
array = []
N.downto(1) { |i| array << [i, 0] }

Q.times do
  query_l, query_r = gets.split
  if query_l == "1"
    x, y = array[-1]

    case query_r
    when "R" then x += 1
    when "L" then x -= 1
    when "U" then y += 1
    when "D" then y -= 1
    end

    array << [x, y]
  else
    puts array[-query_r.to_i].join(" ")
  end
end
