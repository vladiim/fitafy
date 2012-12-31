$ ->
  $( '#testy' ).on 'click', ->
    $( @ ).popover(title: 'blah').popover('show')
  # $('#testy').on 'click', ->
  #   $(@).popover({
  #     title: 'fuck off',
  #     content: 'fuck off again'
  #   }).popover('show')

# $('#testy').popover({trigger: 'click', title: 'fuck off'})
# http://blog.2doconsulting.com/blog/2012/03/15/loading-the-content-for-a-bootstrap-popover-via-ajax/