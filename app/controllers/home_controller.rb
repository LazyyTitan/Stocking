class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: "pk_838d160473ee487e94167e7876dac126")
    if params[:ticker] == ""
      @nothing = "Hey! you forgot to enter a symbol"
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
      if !@stock
        @error = "That stock symbol doesn't exist, please try again"
      end
    end
  end

  def about
    
  end
end
