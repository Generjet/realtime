require 'test_helper'

class PuuOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @puu_order = puu_orders(:one)
  end

  test "should get index" do
    get puu_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_puu_order_url
    assert_response :success
  end

  test "should create puu_order" do
    assert_difference('PuuOrder.count') do
      post puu_orders_url, params: { puu_order: { customer: @puu_order.customer, direction: @puu_order.direction, net_weight: @puu_order.net_weight, ordered_weight: @puu_order.ordered_weight, payment_type: @puu_order.payment_type, product_type: @puu_order.product_type, state: @puu_order.state, tara_weight: @puu_order.tara_weight, total_weight: @puu_order.total_weight, transporter_name: @puu_order.transporter_name, transporter_number: @puu_order.transporter_number } }
    end

    assert_redirected_to puu_order_url(PuuOrder.last)
  end

  test "should show puu_order" do
    get puu_order_url(@puu_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_puu_order_url(@puu_order)
    assert_response :success
  end

  test "should update puu_order" do
    patch puu_order_url(@puu_order), params: { puu_order: { customer: @puu_order.customer, direction: @puu_order.direction, net_weight: @puu_order.net_weight, ordered_weight: @puu_order.ordered_weight, payment_type: @puu_order.payment_type, product_type: @puu_order.product_type, state: @puu_order.state, tara_weight: @puu_order.tara_weight, total_weight: @puu_order.total_weight, transporter_name: @puu_order.transporter_name, transporter_number: @puu_order.transporter_number } }
    assert_redirected_to puu_order_url(@puu_order)
  end

  test "should destroy puu_order" do
    assert_difference('PuuOrder.count', -1) do
      delete puu_order_url(@puu_order)
    end

    assert_redirected_to puu_orders_url
  end
end
