class TransactionsController < ApplicationController

  def index
    @transactions = Transaction.all
  end

  def show
    @transactions = Transaction.all
    if check_filter(:date)
      date = format_date(params[:date])
      @transactions = Transaction.where(date: date)
    end
    @total = 0.00
  end

  private

  def check_filter(filter)
    params[filter].present?
  end

  def format_date(date)
    date.split('-').reverse.join('/')
  end

end
