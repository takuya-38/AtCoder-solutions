# frozen_string_literal: true

N = gets.chomp.to_i
count = 0
add_count = 0

1.upto(N) do |i|
  add_count = add_count + i
  count += add_count
  # puts count, i
  if count >= N
    N_2 = N - (count - add_count)
    # puts count, add_count
    count = 0
    1.upto(N_2) do |j|
      add_count = i - (j - 1)
      count += add_count
      if count >= N_2
        1.upto(N) do |x|
          add_count = i - (x - 1)
          count += add_count
          if count >= N_2 - i - j
            puts (1.to_s * i).to_i + (1.to_s * j).to_i + (1.to_s * x).to_i
            return
          end
        end
      end
    end
  end
end
