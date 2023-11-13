# frozen_string_literal: true

color_list = gets.split.map { |n| n.to_i }

puts color_list.uniq.size
