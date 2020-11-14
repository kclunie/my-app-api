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

  private

  def card_params
    params.require(:card).permit(:title)
  end

end
