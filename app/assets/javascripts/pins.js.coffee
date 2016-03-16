$ ->
  $('#pins').imagesLoaded ->
    $('#pins').masonry
      itemSelector: '.box'
      columnWidth: 200
      isFitWidth: true
      gutterWidth: 100
$ ->
  $('.popup_link').click (e) ->
  e.preventDefault()
  $('#popup').html $('<img>').attr('src', href)
  return