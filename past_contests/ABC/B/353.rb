n, k = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)

kara = k
start_count = 0
while array.length == 0
  count = array.shift
  if kara > count
    kara = kara - count
  else
    kara = 7 - count
    start_count += 1
  end
end
