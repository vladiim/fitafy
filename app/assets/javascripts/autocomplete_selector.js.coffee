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
    values = @data.filter (value) -> value not in exsistingValues

    for value in values
      $li = $("<li>").attr("id", @determineId("element_#{value}")).text("#{@data[value]}")
      $a = $("<a href='#'>").addClass("add-button").attr("id", @determineId("add_#{value}")).text(" Add")
      $li.append($a)
      $ul.append($li)

    for value in exsistingValues
      $li = $("<li>").attr("id", @determineId("element_#{value}")).text("#{@data[value]}")
      $a = $("<a href='#'>").addClass("delete-button").attr("id", @determineId("delete_#{value}")).text(" Remove")
      $li.append($a)
      $ul.append($li)
    $ul

window.initAutocompleteSelector = (options) ->
  new AutocompleteSelector(options)