@DynamicForm =

  updateValue: ->
    $.ajax {
      url: "#{@url}?#{@createParam()}",
      type: 'PUT',
      dataType: 'json',

      success: (data) => DynamicForm.collaborater.updateFormItem(data)

      failure: => alert('Something went wrong o_0 try again')
    }

  createParam: ->
    @param = {}
    @param[@form_type] = {}
    @param[@form_type]["#{@tag}"] = @input.val()
    $.param(@param)

  triggerListeners: ->
    @hideFormListener()
    @updateFormListener()

  updateFormListener: ->
    @update_button.on 'click', (event) =>
      event.preventDefault()
      if @input.val() is @initial_text then @sameText() else @updateValue()

  enterKeyListener: ->
    @input.on 'keydown', (event) =>
      DynamicForm.updateValue() if event.which is 13

  hideFormListener: ->
    @hide_form.on 'click', (event) =>
      DynamicForm.hideForm()
      DynamicForm.showValues()
      event.preventDefault()

  hideCurrentForm: ->
    if @form_node then @hideForm() and @showValues()

  showValues: ->
    @value.removeClass('hidden')
    @show_form.removeClass('hidden')

  hideValues: ->
    @value.addClass('hidden')
    @show_form.addClass('hidden')

  showForm: ->
    @form_node.removeClass('hidden')
    @input.val(@initial_text)
    @input.focus()
    @enterKeyListener()

  hideForm: ->
    @form_node.addClass('hidden')

  sameText: ->
    alert("Sheesh! The #{@tag} are alreay #{@initial_text} - try changing 'em!")