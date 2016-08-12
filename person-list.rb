require 'csv'
require_relative 'person'

sort_by_parameter = ARGV[0]
people = Person.load_csv(STDIN)

case sort_by_parameter
when '--sort-by-name-last_name'
  sorted_people = people.sort_by { |person| [person.name, person.lastname] }
  puts sorted_people
when '--sort-by-last_name-name'
  sorted_people = people.sort_by { |person| [person.lastname, person.name] }
  puts sorted_people
else
  puts people
end
