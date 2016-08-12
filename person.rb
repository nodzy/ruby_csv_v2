require 'csv'

class Person
  attr_accessor :name, :lastname
  
  def initialize(name:, lastname:)
    self.name = name
    self.lastname = lastname
  end

  def to_s
    "#{name} #{lastname}"
  end

  def self.load_csv(file)
    rows = []
    CSV.new(file, headers: true).each do |row|
      row = row.to_h
      row = row.each_with_object({}){|(k,v), h| h[k.to_sym] = v}
      rows << row
    end
    rows.map do |row|
      Person.new(row)
    end
  end
end





 
