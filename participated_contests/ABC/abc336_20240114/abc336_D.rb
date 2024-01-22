n = gets.to_i
num_list = gets.split.map(&:to_i)
# n = 5
# num_list = [2, 2, 3, 1, 1]

max_size = 0
if n % 2 == 1
  max_size = n / 2 + 1
else
  max_size = n / 2
end

search_list = []
max_size.downto(1) do |i|
  if i == 1
    puts i
    break
  end
  (0..10**12).each do |j|
    search_list = num_list.slice(j, j + (i * 2 - 1))
    break if search_list.length != (i * 2 - 1)
    search_list.length.times do |k|
      if search_list[k] >= (i - ((k + 1) - i).abs)
        if k + 1 == search_list.length
          puts i
          return
        end
        next
      else
        break
      end
    end
  end
end
