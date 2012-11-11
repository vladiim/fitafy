class window.ExerciseOrderer
  constructor: ->
    @$button = ".ajax_form"

  init: ->
    $(@$button).bind 'ajax:beforeSend', =>
      $("ul.nav").toggleClass("loading")

    $(@$button).bind 'ajax:success', =>
      $("ul.nav").toggleClass("loading")

$ ->
  orderer = new ExerciseOrderer
  orderer.init()