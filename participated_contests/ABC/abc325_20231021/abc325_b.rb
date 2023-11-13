# frozen_string_literal: true

def max_participation(array)
  max_num_attendees = 0

  1.upto(23) do |add_time|
    num_attendees = 0
    # puts add_time
    array.each do |num_peple, time|
      num_attendees += num_peple if (9..17).include?((time + add_time) % 24)
    end

    max_num_attendees = num_attendees if max_num_attendees < num_attendees
  end

  puts max_num_attendees
end

cnt_base = gets.to_i
array = cnt_base.times.map { gets.split.map(&:to_i) }

max_participation(array)
