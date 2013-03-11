flipped = 0
object = null
the_counter = 0

flip = (el) ->
  if el.children('.card').hasClass('flipped')
    flipped += 1
  else
    flipped -= 1

  if flipped == 2
    if the_counter == el.children().children('.front').attr('counter')
      alert 'same'
    else
      alert 'not same'
    the_counter = 0
    $('.flipped').removeClass('flipped')
    flipped = 0

  if flipped == 1
    the_counter = el.children().children('.front').attr('counter')
      
jQuery ->
  $('.card-container').click () ->
    $(this).children('.card').toggleClass('flipped')
    $(this).toggleClass('flipped')
    flip($(this))
    # window.setTimeout(flip($(this)),1000)
    