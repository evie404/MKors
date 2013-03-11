flipped = 0
object = null
the_counter = 0
same = false

flip = (el) ->
  if el.children('.card').hasClass('flipped')
    flipped += 1
  else
    flipped -= 1

  if flipped == 2
    $('#second-big').css('background-image', el.children().children('.back').css('background-image'))
    $('.big-image').fadeToggle(600)
    $('#overlay').fadeToggle(600)
    if the_counter == el.children().children('.front').attr('counter')
      same = true
    else
      same = false

  if flipped == 1
    $('#first-big').css('background-image', el.children().children('.back').css('background-image'))
    the_counter = el.children().children('.front').attr('counter')
      
jQuery ->
  $('.card-container').click () ->
    $('.card-container.flipped[empty=empty]').children().remove()
    if $(this).attr('empty') != 'empty'
      $(this).children('.card').toggleClass('flipped')
      $(this).toggleClass('flipped')
      flip($(this))
    
  $('#overlay').click () ->
    if flipped == 2
      # alert('test')
      $('.big-image').fadeToggle(600)
      $('#overlay').fadeToggle(600)

      if same
        $('.card-container.flipped').attr('empty','empty').children().fadeToggle(600)
      else
        $('.flipped').removeClass('flipped')

      the_counter = 0
      flipped = 0
      same = false