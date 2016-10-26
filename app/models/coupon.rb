class Coupon < ActiveRecord::Base
  belongs_to :promotion
  before_save :default_values
  def default_values
    self.delivered ||= false
  end
end
