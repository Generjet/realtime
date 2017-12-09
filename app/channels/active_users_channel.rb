class ActiveUsersChannel < ApplicationCable::Channel
	include NoBrainer::Streams

  def subscribed
    # @user = User.create
    # stream_from User.all, include_initial: true

    @puu_orders = PuuOrder.all
    stream_from PuuOrder.all, include_initial: true
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    @puu_orders.destroy
  end
end
