class ProductMailer < ApplicationMailer
    def welcome_email
        @product = params[:product]
        mail(to:@product.email, subject:"welcome to Dayspring Technologies")
    end
end
