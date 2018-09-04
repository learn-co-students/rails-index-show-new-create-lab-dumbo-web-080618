class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
    render :index
  end

  def new
    render :new
  end

  def create
    @coupon = Coupon.create(coupon_params)
    redirect_to coupon_path(@coupon)
  end

  def show
    @coupon = Coupon.find(params[:id])
    render :show
  end

  private def coupon_params
	   params.require(:coupon).permit(:coupon_code, :store)
  end

end
