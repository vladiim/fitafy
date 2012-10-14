class AutocompleteSelector

  constructor: (options) ->
    @parent  = $(options.parentSelector)
    @field   = options.field
    @options = options
    @id      = @determineId()
    @updateParent()

  updateParent: ->
    @parent.append(@hiddenField())
    @parent.append(@textInput())
    @parent.append(@addButton())

  determineId: (suffix) ->
    id = @field.replace("][", "_").replace("[", "").replace("]", "")
    id = "#{id}_#{suffix}" if (suffix)
    id

  initialValue: ->
    @options.initialValue

  hiddenField: ->
    input = $("<input type='hidden'/>")
    input.attr("id": @determineId())
    input.attr("name": @field)
    input.val(@initialValue())
    input

  textInput: ->
    input   = $("<input type='text'/>")
    input.attr("id", @determineId("autocomplete"))
    input.attr("name", "#{@field}[autocomplete]")
    input


  addButton: ->
    add_button = $("<a href='#'>")  
    add_button.attr("id", @determineId("add_button"))
    add_button.html("Add")
    add_button.addClass("selector_add_button")
    add_button

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