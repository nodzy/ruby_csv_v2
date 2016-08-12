require 'csv'
require_relative 'person'

people = Person.load_csv(STDIN)
names = people.each_with_object(Hash.new(0)) { |person, counts| counts[person.name] += 1 }
lastnames = people.each_with_object(Hash.new(0)) { |person, counts| counts[person.lastname] += 1 }

puts "\nNazwiska:\n\n"
lastnames.each { |lname, count| puts "#{lname} (#{count})" }
puts "\nImiona:\n\n"
names.each { |name, count| puts "#{name} (#{count})" }
