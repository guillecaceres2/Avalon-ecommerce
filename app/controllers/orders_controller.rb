class OrdersController < ApplicationController
before_action :authenticate_user!

def index
 @orders = current_user.orders.cart
 #@total = @orders.get_total
end

    def create

        @order = Order.new({

            product_id: params[:product_id],

            user_id: current_user.id

        })

        @order.save

        redirect_to products_path

    end

end
