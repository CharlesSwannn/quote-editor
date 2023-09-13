class QuotesController < ApplicationController
  def index
    @quotes = Quote.all
  end

  def show; end

  def new
    @quote = Quote.new
  end

  def create
    if @quote.save
      redirect_to quotes_path, notice: "Quote was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update

  end
end
