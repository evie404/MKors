module MainHelper
  def render_card(front, back, counter)
    render partial: 'card', locals: {front_url: "cards/front/#{front}.jpg", back_url: "cards/back/#{back}.jpg", counter: counter}
  end
end
