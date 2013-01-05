# class window.WorkoutForm
#   constructor: ->
#      @show_links   = $("a.show_link")
#      @hide_links   = $("a.hide_link")
#      @workout_form = $("form.edit_workout")
#      @workout_exercise_form = $("form.edit_workout_exercise")

#   init: ->
#     $( @show_links ).on "click", (event) =>
#       @link = $(event.target)
#       @toggle()
#       event.preventDefault()

#     $( @hide_links ).on "click", (event) =>
#       @link = $(event.target)
#       @toggle()
#       event.preventDefault()

#     $( @workout_form ).on "ajax:success", => @formSubmitted()

#     $( @workout_exercise_form ).on "ajax:success", => @formSubmitted()

#   toggle: =>
#     @tag   = @getTag(@link)
#     @value = @getValue(@link)
#     @toggleForm()
#     @toggleValue()

#   getTag: (link) => link.data("tag")

#   getValue: (link) => link.data("value")

#   toggleForm: => $(".workout_form.#{@tag}[data-value=#{@value}]").toggleClass("hidden")

#   toggleValue: => $(".workout_value.#{@tag}[data-value=#{@value}]").toggleClass("hidden")

#   formSubmitted: => @hideForms() && @showValues()

#   hideForms: => $(".workout_form").addClass("hidden")

#   showValues: => $(".workout_value").removeClass("hidden")

# $ ->
#   workout_form = new WorkoutForm
#   workout_form.init()