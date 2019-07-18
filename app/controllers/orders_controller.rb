class OrdersController < ApplicationController
before_action :authenticate_user!

def index
 @orders = current_user.orders.cart
 #@total = @orders.get_total
end

end
