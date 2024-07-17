n = gets.to_i

if n == 1
  puts 1
else
  0.upto(n) do |i|
    if i**3 <= n
      next
    else
      (i - 1).downto(0) do |j|
        num = (j**3).to_s
        size = num.length / 2
        if num[0..size] == num.reverse[0..size]
          puts j**3
          break
        end
      end
      break
    end
  end
end
