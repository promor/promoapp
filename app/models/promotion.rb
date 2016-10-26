class Promotion < ActiveRecord::Base
    has_many :coupons
    before_update :onUpdate
  private
  def onUpdate
    if self.number_changed?
      if self.changes[:number][0]>=self.changes[:number][1]
        aux=self.changes[:number][0]-self.changes[:number][1]
        aux.times do 
          Coupon.create(promotion:self)
        end 
      else
         aux=self.changes[:number][1]-self.changes[:number][0]
         self.coupons.where(delivered:false)
      end
    end
    true
  end
end
