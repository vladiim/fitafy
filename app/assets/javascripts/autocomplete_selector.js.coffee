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
    $("a.remove-button").on "click", (event) => @removeButton(event)

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

  removeUl: ->
    $ul = $("ul##{@determineId('list')}")
    $ul.remove()

  removeHidden: ->
    $hidden = $("input:hidden##{@determineId()}")
    $hidden.remove()

  focusOnAutocomplete: ->
    $autocomplete = $("##{@determineId('autocomplete')}")
    $autocomplete.focus()

  refreshList: ->
    @removeUl()
    @removeHidden()
    @parent.append(@hiddenField())
    @parent.append(@createList())
    @focusOnAutocomplete()

  createListItem: (value) ->
    $("<li>").attr("id", @determineId(value)).text("#{@data()[value]}")

  createLinkItem: (value, type) ->
    $("<a href='#'>").addClass("#{type.toLowerCase()}-button").attr("id", @determineId(value)).text(" #{type}")

  getId: (link) ->
    linkId = link.attr("id")
    linkId.charAt(linkId.length - 1)

  addButton: (event) ->
    $link = $(event.target)
    id = @getId($link)
    @options.initialValue = "#{@options.initialValue},#{id}"
    @refreshList()
    event.preventDefault()

  removeButton: (event) ->
    $link = $(event.target)
    id = @getId($link)
    values = @options.initialValue.split(',')
    for value, index in values
      if value is id
        values.splice(index, 1)
        @options.initialValue = values.join(",")
    @refreshList()
    event.preventDefault()

window.initAutocompleteSelector = (options) ->
  new AutocompleteSelector(options)