class Product < ApplicationRecord

has_many_attached:product_photo

has_one_attached:invoice

has_rich_text :details

# validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "Only letters are allowed" }
# validates :stock, numericality: true
# validates :stock, length: { minimum: 10, maximum: 20 }
# validates :description, length: { maximum: 500 } 
validate :check_price


#Scopes
scope :out_of_stock, -> {where("stock <= ?", 0)}

#Customize validation
def check_price
    if stock == 0 && price > 0
        errors.add "stock must be greater than 0"
    end
end

#check product is active or not
# def check_is_active
#     validates:is_active,


#custamize validation for special character
# validates :description,
#           format: { with: /\A[a-zA-Z0-9\s]*\z/,
#                     message: "should not contain special characters" },
#           allow_blank: true


end


    #create the method inside a model assign a value to the all 
    #collecting values from the products and use select and apply condition if the price is greater than
    #or select we can use for applying the condition
 

    # def self.limit_with_active
    #     Product.all.limit(10).select{|n| n.is_active = true} 
    # end
   
     
    # @status=Product.all.limit(10).pluck(:is_active).select { |status| status == true }
    # @price=Product.all.limit(10).pluck(:price)
    # @stock=Product.all.limit(20).pluck(:stock);
    # @product=Product.all.limit(10)

#     def check_availabelity
#         #check for stock value more than 0
#     end

#     def apply_discount(discount_perfect)
#         #use case statement and calculate discount
#     end

#     def total_amount
#         #call the check_availabelity(if true) and apply_discount use any math(round) method use it calculate the total.
#     end
    



