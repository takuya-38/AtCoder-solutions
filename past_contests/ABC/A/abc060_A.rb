# frozen_string_literal: true

array = gets.chomp.split
puts ((array[0][-1] == array[1][0]) && (array[1][-1] == array[2][0])) ? 'YES' : 'NO'
