class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def new
  end

  def create
    # { :coupon => { :coupon_code => "ASD123", :store => "Dean and Deluca" } }
    coup = params[:coupon]
    @coupon = Coupon.create(coupon_code: coup[:coupon_code], store: coup[:store])
    redirect_to coupon_path(@coupon)
  end

  def show
    @coupon = Coupon.find(params[:id])
  end
end
