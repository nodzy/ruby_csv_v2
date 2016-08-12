require 'csv'
require_relative 'person'

people = Person.load_csv(STDIN)

uniq_people = people.uniq(&:lastname)

uniq_people.each do |person|
  puts
  puts person.lastname
end
