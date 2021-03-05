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
  end

  private

  def card_params
    params.require(:card).permit(:title)
  end

end
