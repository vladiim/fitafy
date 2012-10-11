initAutocompleteSelector = (options) ->
  $parent = $(options.parentSelector)
  field = options.field
  id = fiel.replace("][", "_").replace("[", "").replace("]", "")
  input = $("<input type='hidden'/>").attr({ "id": id, "name": field }).val(options.initialValue)
  $parent.append input