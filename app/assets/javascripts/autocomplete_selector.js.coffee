class AutocompleteSelector

  constructor: (options) ->
    @parent      = $(options.parentSelector)
    @field       = options.field
    @options     = options
    @data        = options.data
    @addedValues = @initialValue().split(",")
    @allValues   = Object.keys(@data)
    @id          = @determineId()
    $("a.add-button").click @addEventHandler()
    @updateParent()

  updateParent: ->
    @parent.append(@hiddenField())
    @parent.append(@textInput())
    # @parent.append(@addButton())
    @parent.append(@createList())

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

  listElement: (value) ->
    $li = @createListItem(value)
    $a = if value in @addedValues
      @createLinkItem(value, "Remove")
    else
      @createLinkItem(value, "Add")
    $li.append($a)

  createList: ->
    $ul = $("<ul>").attr("id", @determineId("list"))
    for value in @allValues
      $li = @listElement(value)
      $ul.append($li)
    $ul

  createListItem: (value) ->
    $("<li>").attr("id", @determineId(value)).text("#{@data[value]}")

  createLinkItem: (value, type) ->
    $("<a href='#'>").addClass("#{type.toLowerCase()}-button").attr("id", @determineId(value)).text(" #{type}")

  addEventHandler: (event) ->
    $link = $(event.target)
    id = $link.id()
    alert(id)

  # addEventHandler: (event) ->
  #   newItemName = $("##{@determineId("autocomplete")}").val()
  #   newItemId   = @idLookUp(newItemName)
  #   return if not newItemId
  #   @addedValues = "#{@addedValues},#{newItemId}"
  #   $("ul##{@determineId("list")}").remove()
  #   @listElements()
  #   # hiddenField = $("##{@determineId}")
  #   # hiddenField.val("#{hiddenField.val()},#{newItemId}")
  #   # list = $("##{@determineId("list")}")
  #   # list.append(@listElement(newItemId))
  #   $autocomplete = $("##{@determineId("autocomplete")}")
  #   $autocomplete.val("")
  #   $autocomplete.focus()
  #   event.preventDefault()

  # idLookUp: (itemName) ->
  #   for id in @data
  #     id if @data[id] is itemName else null

window.initAutocompleteSelector = (options) ->
  new AutocompleteSelector(options)