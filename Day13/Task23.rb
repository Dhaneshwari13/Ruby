
# TASK-2: Use inspect method in each controller method.
   Modified and checked in the places of the project methods.

params.inspect is usually used for debugging—to see what parameters are actually coming from the form/request.
- This will
1. Stop execution
2. Show all permitted params in the error page


 def create
    raise customer_params.inspect
    @customer = Customer.new(customer_params)
    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: "Customer was successfully created." }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end



