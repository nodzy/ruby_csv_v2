require 'csv'
require_relative 'person'

people = Person.load_csv(STDIN)

uniq_people = people.uniq do |person|
  [person.name, person.lastname]
end

puts uniq_people
