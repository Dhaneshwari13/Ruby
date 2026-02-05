class Customer < ApplicationRecord

    has_one_attached:profile_photo

    has_rich_text:about_me

    # validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "Only letters are allowed" }
    # validates :email, uniqueness: true
    # validates :email, presence: true
    # validates :email, absence: false

    #scope :unique_email, -> {distinct.where(email: "dhanu@gmail.com").pluck(:email)}
    # scope :blacklisted_customers, -> (customer_ids) { where(id: customer_ids)}
#  scope :with_email, ->(email) { where(email: email).distinct.pluck(:email)}
    
    def check_email
        #check email is present or not
        if email == nil
            puts "email is not present"
        else
            puts "email is present"
        end
    end

    def name_check
        #check name only alphabetic values
         if name == nil
            puts "name is not present"
        else
            puts "name is present"
        end
    end
end
