s, t = gets.split
flag = false

(1...s.length).each do |w|
  (0...w).each do |c|
    now = ""
    (c...s.length).step(w) do |i|
      now += s[i]
    end

    if now == t
      flag = true
      break
    end
  end

  break if flag
end

puts flag ? "Yes" : "No"
