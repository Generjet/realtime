class OrdersChannel < ApplicationCable::Channel
	include NoBrainer::Streams
  def subscribed
    # stream_from "some_channel"
    @puu_orders = PuuOrder.all
    stream_from @puu_orders, include_initial: true
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    @puu_orders.destroy
  end
end
