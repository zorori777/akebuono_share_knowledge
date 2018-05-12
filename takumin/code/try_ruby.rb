class Animal
  def initialize(args = {})
    @name = args[:name]
    @size = args[:size] || defo_size
  end
end

class Dog < Animal
  def initialize(args)
    super(args)
  end

  def defo_size
    30
  end
end

# class Cat < Animal
#   def initialize(args = {})

#   end
# end

dog = Dog.new(name: "ken")
p dog
