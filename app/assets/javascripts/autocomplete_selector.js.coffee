class AutocompleteSelector

  constructor: (options) ->
    @parent      = $(options.parentSelector)
    @field       = options.field
    @options     = options
    @data        = options.data
    @addedValues = @initialValue().split(",")
    @allValues   = Object.keys(@data)
    @id          = @determineId()
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
    for value in @allValues
      $li = @createListItem(value)
      $a = if value in @addedValues
        @createLinkItem(value, "Remove")
      else
        @createLinkItem(value, "Add")
      $li.append($a)
      $ul.append($li)
    $ul

  createListItem: (value) ->
    $("<li>").attr("id", @determineId(value)).text("#{@data[value]}")

  createLinkItem: (value, type) ->
    $("<a href='#'>").addClass("#{type.toLowerCase()}-button").attr("id", @determineId(value)).text(" #{type}")

window.initAutocompleteSelector = (options) ->
  new AutocompleteSelector(options)