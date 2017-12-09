json.extract! puu_order, :id, :product_type, :ordered_weight, :tara_weight, :total_weight, :net_weight, :direction, :customer, :transporter_name, :transporter_number, :payment_type, :state, :created_at, :updated_at
json.url puu_order_url(puu_order, format: :json)
