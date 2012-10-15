class AutocompleteSelector

  constructor: (options) ->
    @parent  = $(options.parentSelector)
    @field   = options.field
    @options = options
    @data    = options.data
    @id      = @determineId()
    @updateParent()

  updateParent: ->
    @parent.append(@hiddenField())
    @parent.append(@textInput())
    @parent.append(@addButton())
    @parent.append(@listElements())

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

  listElements: ->
    $ul = $("<ul>").attr("id", @determineId("list"))
    exsistingValues = @initialValue().split(",")
    values = Object.keys(@data)

    for value in values
      $li = $("<li>").attr("id", @determineId(value)).text("#{@data[value]}")
      if value in exsistingValues
        $a = $("<a href='#'>").addClass("remove-button").attr("id", @determineId(value)).text(" Remove")
      else
        $a = $("<a href='#'>").addClass("add-button").attr("id", @determineId(value)).text(" Add")
      $li.append($a)
      $ul.append($li)
    $ul

window.initAutocompleteSelector = (options) ->
  new AutocompleteSelector(options)