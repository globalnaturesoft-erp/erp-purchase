module Erp
  module Purchase
    module Backend
      class PurchasesController < Erp::Backend::BackendController
    
        def purchase_orders
        end
        
        # POST /orders/list
        def purchase_orders_listing
          @orders = Erp::Orders::Order.purchase_orders.search(params).paginate(:page => params[:page], :per_page => 10)
          
          render layout: nil
        end
        
        def purchase_order_details
          @order = Erp::Orders::Order.find(params[:id])
          
          render layout: nil
        end
        
      end
    end
  end
end
