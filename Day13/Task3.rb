# Task-3

# Add action text to products

Step-1: Update Product Model
# app/models/product.rb
class Product < ApplicationRecord
  has_rich_text :details
end

Step-2: Update the Form
Replace text_area with rich_text_area for the field.
<%= form.rich_text_area :details %>




Step-3: Permit the Parameter
Add the Action Text attribute to strong parameters in the controller.

# app/controllers/products_controller.rb
private

def product_params
  params.require(:product).permit(:name, :price, :stock, :is_active, :details)
end





