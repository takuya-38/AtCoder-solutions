n, a = gets.split.map(&:to_i)
ts = gets.split.map(&:to_i)

now = 0

ts.each do |t|
  if t <= now
    now += a
    puts now
  else
    now = t + a
    puts now
  end
end
