class OrdersController < ApplicationController

def index
 @orders = current_user.orders.cart
 @total = @orders.get_total
end

end
