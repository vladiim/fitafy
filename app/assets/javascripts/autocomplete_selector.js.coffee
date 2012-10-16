class AutocompleteSelector

  constructor: (options) ->
    @parent      = $(options.parentSelector)
    @options     = options
    @updateParent()

  field: ->
    @options.field

  data: ->
    @options.data

  allValues: ->
    Object.keys(@data())

  initialValue: ->
    @options.initialValue

  addedValues: ->
    @initialValue().split(",")

  updateParent: ->
    @parent.append(@hiddenField())
    @parent.append(@textInput())
    @parent.append(@createList())
    $("a.add-button").on "click", (event) => @addButton(event)

  determineId: (suffix) ->
    id = @field().replace("][", "_").replace("[", "").replace("]", "")
    id = "#{id}_#{suffix}" if (suffix)
    id

  hiddenField: ->
    input = $("<input type='hidden'/>")
    input.attr("id": @determineId())
    input.attr("name": @field())
    input.val(@initialValue())

  textInput: ->
    input   = $("<input type='text'/>")
    input.attr("id", @determineId("autocomplete"))
    input.attr("name", "#{@field()}[autocomplete]")

  listElement: (value) ->
    $li = @createListItem(value)
    $a = if value in @addedValues()
      @createLinkItem(value, "Remove")
    else
      @createLinkItem(value, "Add")
    $li.append($a)

  createList: ->
    $ul = $("<ul>").attr("id", @determineId("list"))
    $ul.append(@listElement(value)) for value in @allValues()
    $ul

  refreshList: ->
    $ul = $("ul##{@determineId('list')}")
    $ul.remove()
    $hidden = $("input:hidden##{@determineId()}")
    $hidden.remove()
    @parent.append(@hiddenField())
    @parent.append(@createList())

  createListItem: (value) ->
    $("<li>").attr("id", @determineId(value)).text("#{@data()[value]}")

  createLinkItem: (value, type) ->
    $("<a href='#'>").addClass("#{type.toLowerCase()}-button").attr("id", @determineId(value)).text(" #{type}")

  addButton: (event) ->
    $link = $(event.target)
    linkId = $link.attr("id")
    id = linkId.charAt(linkId.length - 1)
    @options.initialValue = "#{@options.initialValue},#{id}"
    @refreshList()

window.initAutocompleteSelector = (options) ->
  new AutocompleteSelector(options)