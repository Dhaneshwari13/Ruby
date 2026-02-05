class CustomerMailer < ApplicationMailer
    def welcome_email
        @customer = params[:customer]
        mail(to:@customer.email, subject:"welcome to ecommerce")
    end

end
