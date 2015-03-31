class Sale < ActiveRecord::Base
  has_many :sales_details
end
