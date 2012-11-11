# class window.ExerciseOrderer
#   constructor: ->
#     @$button = ".ajax_form"

#   init: ->
#     $(@$button).bind 'ajax:beforeSend', =>
#       $("span.ajax_nav").toggleClass("loading")

#     $(@$button).bind 'ajax:success', =>
#       $("span.ajax_nav").toggleClass("loading")
#       alert("done!")

# $ ->
#   orderer = new ExerciseOrderer
#   orderer.init()