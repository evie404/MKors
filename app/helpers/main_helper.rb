module MainHelper
  def add_card(cards, front, back, counter)
    cards << [front, back, counter]
  end

  def render_card_from_array(cards)
    card = cards.shuffle!.pop
    render_card(card[0],card[1],card[2])
  end

  def render_card(front, back, counter)
    render partial: 'card', locals: {front_url: "cards/front/#{front}.jpg", back_url: "cards/back/#{back}.jpg", counter: counter}
  end
end