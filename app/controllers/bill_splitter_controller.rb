class BillSplitterController < ApplicationController
  def index
  end

  def create
    amount = params[:amount].to_f
    tax = params[:tax].to_f
    tip = params[:tip].to_f
    number = params[:number].to_f
    result = ((amount * (1 + tax/100) * (1 + tip/100)) / number).round(2)

    redirect_to root_path({result: result})

  end
end
