class Person
    attr_accessor :name, :age

    def initialize(name = '')
        self.name = name
    end
end

p Person.new

p Person.new('Ivan')