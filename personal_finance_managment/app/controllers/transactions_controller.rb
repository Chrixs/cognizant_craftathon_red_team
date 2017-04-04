class TransactionsController < ApplicationController

  def index
    @transactions = Transaction.all
  end

  def show
    @transactions = Transaction.all
    @total = 0.00
    @groceries_total = 0
    @bills_total = 0
    @transport_total = 0
    @shopping_total = 0
    @eat_and_drink_out_total = 0
  end

end
