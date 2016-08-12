require 'csv'
require_relative 'person'

def csv_headers
  %w(name lastname)
end

files = []
files += ARGV

file_contents = files.map { |f| CSV.read(f) }

csv_string = CSV.generate do |csv|
  csv << csv_headers
  file_contents.each do |file|
    file.shift
    file.each do |row|
      csv << row
    end
  end
end

puts csv_string


 