class Coupon < ActiveRecord::Base
  def to_s
    "#{coupon_code} for #{store}"
  end
end
