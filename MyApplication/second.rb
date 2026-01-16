#function inside a method variable
class product
    @include
    @name
    @Model
    @@count = @@count + 1
    def initialize(id,name,model)
        @id = id
        @name = name
        @model = model
    end
    def getAll
        return "[name: "+@name+ "\n id": #{@id}"+"\n model:"+@model+"]";
    end
end

p = product.new(1, "car", "benz");
puts p.getAll

p1 = product.new(2, "laptob", "mobile");
puts p1.getAll