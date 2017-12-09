class ActiveUsersChannel < ApplicationCable::Channel
	include NoBrainer::Streams

  def subscribed
    @user = User.create
    stream_from User.all, include_initial: true
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    @user.destroy
  end
end
