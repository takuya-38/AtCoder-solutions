N = gets.to_i

(0..N).each do |i|
  (0..N).each do |j|
    (0..N).each do |z|
      puts "#{i} #{j} #{z}" if (i + j + z) <= N
    end
  end
end
