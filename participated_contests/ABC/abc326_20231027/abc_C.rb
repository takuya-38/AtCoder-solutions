n = gets.to_i
Q = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
total = 0

a_list = []
n.times do |index|
  if A[index].zero?
    a_list << Q.max
  else
    a_list << Q[index] / A[index]
  end
end
a_max = a_list.min

a_max.downto(0) do |am|
  q_rest_list = []
  n.times do |index|
    q_rest_list << Q[index] - A[index] * am
  end

  b_list = []
  n.times do |index|
    if B[index].zero?
      b_list << q_rest_list.max
    else
      b_list << q_rest_list[index] / B[index]
    end
  end

  b_max = b_list.min
  next if b_max == 0
  total = am + b_max if total < am + b_max
end

p total
