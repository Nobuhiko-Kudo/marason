class SalesDetail < ActiveRecord::Base
  belongs_to :item
  belongs_to :sale

#  def total
#    price * quantity
#  end

end	
