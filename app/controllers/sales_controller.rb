class SalesController < ApplicationController
  def index
    @sales = Sale.joins(:sales_details)
        .order(:id)
        .group('sales.id')
        .select('sales.*, SUM(sales_details.price * sales_details.quantity) * 1.08 AS sum')
  end

  def show
    @salesDetails = SalesDetail
        .joins(:item)
        .where( "sale_id = ?","#{params[:id]}" )
        .select('items.*, sales_details.*')
    
    @sale = Sale.joins(:sales_details)
        .order(:id)
        .group('sales.id')
        .where( 'sales.id = ?', "#{params[:id].to_i}")
        .select('sales.*, SUM(sales_details.price * sales_details.quantity) * 1.08 AS sum')
  end
end
