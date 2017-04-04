class TransactionsController < ApplicationController

  def index
    @transactions = Transaction.all
  end

  def show
    @transactions = Transaction.all
    @total = 0.00
  end

end
