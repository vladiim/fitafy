class window.ExerciseOrderer
  constructor: ->
    @button = ".ajax_form"

  init: ->
    $(@button).on 'ajax:beforeSend', =>
      $("li.ajax_nav_spinner").toggleClass("loading")

    $(@button).on 'ajax:success', =>
      $("li.ajax_nav_spinner").toggleClass("loading")

    $(@button).on 'ajax:error', =>
      alert("Oops! Looks like I messed up - forgive and try again?")

$ ->
  orderer = new ExerciseOrderer
  orderer.init()