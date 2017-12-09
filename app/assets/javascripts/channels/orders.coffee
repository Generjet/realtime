App.orders = App.cable.subscriptions.create "OrdersChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    if data.old_val && !data.new_val
      App.puu_orders.remove_order(data.old_val)
    else if data.new_val
      App.puu_orders.new_order(data.new_val)