class CouponsController <ApplicationController

  def index
    @coupons = Coupon.all
    render :index
  end
  def show
    @coupons = Coupon.find(params[:id])
    render :show
  end
  def new

  end
  def create
    @coupon = Coupon.create(coupon_code: params[:coupon_code])
    redirect_to("/coupons/#{@coupon.id}")
  end
  def show
    @coupon = Coupon.find(params[:id])
    render :show
  end

end
