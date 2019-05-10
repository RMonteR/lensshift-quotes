class QuotesController < ApplicationController
  def index
  end

  def new
  end

  def create
    @quote = Quote.new(quote_params)

    @quote.save
    redirect_to @quote
  end

  private
    def quote_params
      params.require(:quote).permit(:title, :text)
    end
end
