#function inside a method variable
class Product
  def initialize(id, name, model)
    @id = id
    @name = name
    @model = model
    
  end

  def get_all
    "Name: #{@name}\nId: #{@id}\nModel: #{@model}"
  end
end

p = Product.new(1, "car", "benz")
puts p.get_all

p1 = Product.new(2, "laptop", "mobile")
puts p1.get_all
