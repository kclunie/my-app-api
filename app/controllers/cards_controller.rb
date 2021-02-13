class CardsController < ApplicationController

  def index
    cards = Card.all
    render json: cards
    puts "hello ruby"
  end

  def create
    
    new_card = Card.create(card_params)
    render json: new_card
  end

  def destroy
    puts "1ruby"
    card = Card.find(params["id"])
    puts "2ruby"
    card.destroy
    puts "3ruby"
  end

#   def destroy
#     @city = City.find(params["id"])
#     @trip = Trip.find(@city.trip_id)
#     @city.destroy
#     render json: @trip
# end

  private

  def card_params
    params.require(:card).permit(:title)
  end

end
