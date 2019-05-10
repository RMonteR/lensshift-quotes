class QuotesController < ApplicationController
  def index
    # Not using Quote.limit(1).order("RANDOM()") because of a deprecation warning for Ruby 6.0.
    @quotes = Quote.offset(rand(Quote.count)).first
  end

  def show
    @quote = Quote.find(params[:id])
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
