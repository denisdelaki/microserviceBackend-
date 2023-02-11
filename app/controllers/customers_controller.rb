class CustomersController < ApplicationController 
    def index
        customers = Customer.all
        render json: customers
      end
    
      # def show
      #   customer = Customer.find(params[:id])
      #   render json: customer
      # end
    
      def create
       

        customer = Customer.create!(customer_params)
        render json: customer, status: :created
      end
    
      def update
        customer = Customer.find(params[:id])
        if customer.update(customer_params)
          render json: customer
        else
          render json: customer.errors, status: :unprocessable_entity
        end
      end
    
      def destroy
        customer = Customer.find(params[:id])
        customer.destroy
        head :no_content
      end
    
      private
        def customer_params
          params.permit(:firstName, :lastName, :email, :phone, :address).to_h.symbolize_keys
        end
end
