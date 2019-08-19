class QuotesController < ApplicationController

  def index
    name = params[:name]
    if name
      @quotes = Quote.search(name)
    else
      @quotes = Quote.all
    end
    json_response(@quotes)
  end

  def show
    @quote = Quote.find(params[:id])
    json_response(@quote)
  end

  def create
    @quote = Quote.create!(quote_params)
    json_response(@quote, :created)
  end

  def update
    @quote = Quote.find(params[:id])
    if @quote.update!(quote_params)
      render status: :ok, json: {
        message: "This quote has been updated successfully."
      }
    end
  end

  def destroy
    @quote = Quote.find(params[:id])
    if @quote.destroy!
      render status: :ok, json: {
        message: "This quote has been destroyed successfully."
      }
    end
  end

  private
  def quote_params
    params.permit(:author, :content)
  end
end
