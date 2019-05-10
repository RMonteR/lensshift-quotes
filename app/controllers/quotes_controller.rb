class QuotesController < ApplicationController
  def index
    # Not using Quote.limit(1).order("RANDOM()") because of a deprecation warning for Ruby 6.0.
    @quotes = Quote.offset(rand(Quote.count)).first
  end

  def show
    @quote = Quote.find(params[:id])
  end

  def new
    @quote = Quote.new
  end

  def edit
    @quote = Quote.find(params[:id])
  end

  def create
    @quote = Quote.new(quote_params)

    if @quote.save
      redirect_to @quote
    else
      render 'new'
    end
  end

  def update
    @quote = Quote.find(params[:id])

    if @quote.update(quote_params)
      redirect_to @quote
    else
      render 'edit'
    end
  end

  private
    def quote_params
      params.require(:quote).permit(:author, :text)
    end
end
