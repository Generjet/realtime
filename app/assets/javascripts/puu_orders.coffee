# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
App.spreadsheet =  
    active_orders: {}

    new_order: (param) ->
        @active_orders[param.customer] = param
        @render_active_orders()

    remove_order: (param) ->
        delete @active_orders[user.customer]
        @render_active_orders()

    render_active_orders: () ->
        $('#active_orders_list').html(
            ("<li>#{param.customer}</li>" for customer,param of @active_orders).join("")
        )