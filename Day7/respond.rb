class Animal
  attr_accessor :name, :category  # fixed typo

  def initialize(name, category)
    @name = name
    @category = category
  end
end

class Dog < Animal
  attr_accessor :breed, :age  

  def initialize(name, category, breed, age)
    super(name, category)
    @breed = breed
    @age = age
  end
end

dog = Dog.new("Buddy", "Mammal", "Golden Retriever", 4)  # separated breed and age
puts dog.name       # Buddy
puts dog.category   # Mammal
puts dog.breed      # Golden Retriever
puts dog.age        # 4
