n = gets.to_i
count = 0

while true
  if n % 2 == 0
    count += 1
    n = n / 2
  else
    puts count
    break
  end
end
