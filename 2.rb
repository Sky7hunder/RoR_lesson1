require 'date'
puts 'Enter year when you born'
year = gets.chomp
puts 'Enter month when you born'
month = gets.chomp
puts 'Enter day when you born'
day = gets.chomp

born = Time.new(year, month, day)
time_now = Time.now

age = time_now - born
years = age/((365*24*60*60*4+1).to_f/4)
days = years * 365
hours = days * 24
minutes = hours * 60
seconds = minutes * 60
puts "I live #{years.to_i} years or #{days.to_i} days, or #{hours.to_i} hours, or #{minutes.to_i} minutes,
 or #{seconds.to_i} seconds!"