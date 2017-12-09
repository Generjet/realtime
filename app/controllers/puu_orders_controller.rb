class PuuOrdersController < ApplicationController
  before_action :set_puu_order, only: [:show, :edit, :update, :destroy]

  # GET /puu_orders
  # GET /puu_orders.json
  def index
    @puu_orders = PuuOrder.all
  end

  # GET /puu_orders/1
  # GET /puu_orders/1.json
  def show
  end

  # GET /puu_orders/new
  def new
    @puu_order = PuuOrder.new
  end

  # GET /puu_orders/1/edit
  def edit
  end

  # POST /puu_orders
  # POST /puu_orders.json
  def create
    @puu_order = PuuOrder.new(puu_order_params)

    respond_to do |format|
      if @puu_order.save
        format.html { redirect_to @puu_order, notice: 'Puu order was successfully created.' }
        format.json { render :show, status: :created, location: @puu_order }
      else
        format.html { render :new }
        format.json { render json: @puu_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /puu_orders/1
  # PATCH/PUT /puu_orders/1.json
  def update
    respond_to do |format|
      if @puu_order.update(puu_order_params)
        format.html { redirect_to @puu_order, notice: 'Puu order was successfully updated.' }
        format.json { render :show, status: :ok, location: @puu_order }
      else
        format.html { render :edit }
        format.json { render json: @puu_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puu_orders/1
  # DELETE /puu_orders/1.json
  def destroy
    @puu_order.destroy
    respond_to do |format|
      format.html { redirect_to puu_orders_url, notice: 'Puu order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puu_order
      @puu_order = PuuOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def puu_order_params
      params.require(:puu_order).permit(:product_type, :ordered_weight, :tara_weight, :total_weight, :net_weight, :direction, :customer, :transporter_name, :transporter_number, :payment_type, :state)
    end
end
