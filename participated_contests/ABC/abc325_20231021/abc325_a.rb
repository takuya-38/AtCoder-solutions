# frozen_string_literal: true

def call_name(first_name)
  puts first_name + ' ' + 'san'
end

name = gets
array = name.split(' ')

call_name(array[0])
