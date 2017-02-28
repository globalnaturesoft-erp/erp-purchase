Erp::Purchase::Engine.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
		namespace :backend, module: "backend", path: "backend/purchase" do
			get 'purchase_orders' => 'purchases#purchase_orders', as: :purchase_orders
			post 'purchase_orders_listing' => 'purchases#purchase_orders_listing', as: :purchase_orders_listing
			get 'purchase_order_details' => 'purchases#purchase_order_details', as: :purchase_order_details
		end
	end
end