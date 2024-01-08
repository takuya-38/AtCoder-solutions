N = gets.to_i
count_lists = []
array_lists = []

N.times do
  count_lists << gets.to_i
  array_lists << gets.split.map(&:to_i)
end

X = gets.to_i

match_index_lists = []
array_lists.each_with_index do |array, i|
  if array.include?(X)
    match_index_lists << i
  end
end

min = match_index_lists.min_by { |c| array_lists[c].size }

ans = match_index_lists.select { |c| array_lists[c].size == array_lists[min].size }
ans.map! { |a| a + 1 }

puts ans.size, ans.join(" ")
