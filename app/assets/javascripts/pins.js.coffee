$ ->
  $('#pins').imagesLoaded ->
    $('#pins').masonry
      itemSelector: '.box'
      columnWidth: 200
$ ->
  $('.popup_link').click (e) ->
  e.preventDefault()
  $('#popup').html $('<img>').attr('src', href)
  return



