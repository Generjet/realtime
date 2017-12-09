class PuuOrder
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :product_type, :type => String
  field :ordered_weight, :type => Integer
  field :tara_weight, :type => Integer
  field :total_weight, :type => Integer
  field :net_weight, :type => Integer
  field :direction, :type => Integer
  field :customer, :type => String
  field :transporter_name, :type => String
  field :transporter_number, :type => String
  field :payment_type, :type => String
  field :state, :type => String
end
