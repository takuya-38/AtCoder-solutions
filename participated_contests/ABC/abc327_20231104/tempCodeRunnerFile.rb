# frozen_string_literal: true

table = []
result = true

9.times do
  table << gets.split.map(&:to_i)
end

table_transpose = table.transpose

table.each do |row|
  if row.sort != [*1..9]
    result = false
    puts row
    puts [*1..9]
    break
  end
end

table_transpose.each do |row|
  if row.sort != [*1..9]
    result = false
    break
  end
end

array_1 = []
array_2 = []
array_3 = []

table.each do |row|
  array_1.push(row[0], row[1], row[2])
  array_2.push(row[3], row[4], row[5])
  array_3.push(row[6], row[7], row[8])
  if row.sort != [*1..9]
    result = false
    break
  end

  if array_1.length == 9
    if array_1 != [*1..9] || array_2 != [*1..9] || array_3 != [*1..9]
      result = false
      break
    end

    array_1 = []
    array_2 = []
    array_3 = []
  end
end
