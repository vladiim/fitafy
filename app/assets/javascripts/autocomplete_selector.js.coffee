class AutocompleteSelector

  constructor: (options) ->
    @domParent = options.parentSelector
    @options   = options
    @field     = options.field
    @data      = options.autocomplete_data
    @appendDomParent()

  appendDomParent: ->
    $(@domParent).append(@hiddenField())
    $(@domParent).append(@textInput())
    $(@domParent).append(@addButton())


window.initAutocompleteSelector = (options) ->
  new AutocompleteSelector(options)

# ----- Working code that needs to be refactored

# window.initializeHiddenField = (options) ->
#   $parent = $(options.parentSelector)
#   field = options.field
#   id = field.replace("][", "_").replace("[", "").replace("]", "")
#   input = $("<input type='hidden'/>")
#   input.attr({ "id": id, "name": field })
#   input.val(options.initialValue)
#   $parent.append input  

# window.initializeTextInput = (options) ->
#   $parent = $(options.parentSelector)
#   field   = options.field
#   id      = field.replace("][", "_").replace("[", "").replace("]", "")
#   input   = $("<input type='text'/>")
#   input.attr({ "id": "#{id}_autocomplete", "name": "#{field}[autocomplete]" })
#   $parent.append input
#   add_button = $("<a href='#'>")  
#   add_button.attr("id", "#{id}_add_button")
#   add_button.html("Add")
#   add_button.addClass("selector_add_button")
#   $parent.append add_button

# window.initAutocompleteSelector = (options) ->
#   initializeHiddenField(options)
#   initializeTextInput(options)