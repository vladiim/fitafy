class window.DynamicForm

  updateValue: =>
    @createParam()    
    $.ajax {
      url: "#{@url}?#{@param}",
      type: 'PUT',
      dataType: 'json',

      success: (data) => @updateFormItem(data)

      failure: => alert('Something went wrong o_0 try again')
    }

  triggerListeners: =>
    @hideFormListener()
    @updateFormListener()

  hideFormListener: =>
    @hide_form.on 'click', (event) =>
      @hideForm()
      @showValues()
      event.preventDefault()

  updateFormListener: =>
    @update_button.on 'click', (event) =>
      if @input.val() is @initial_text then @sameText() else @updateValue()
      event.preventDefault()

  enterKeyListener: =>
    @input.on 'keydown', (event) =>
      @updateValue() if event.which is 13

  showValues: =>
    @value.removeClass('hidden')
    @show_form.removeClass('hidden')

  hideValues: =>
    @value.addClass('hidden')
    @show_form.addClass('hidden')

  showForm: =>
    @form_node.removeClass('hidden')
    @input.val(@initial_text)
    @input.focus()
    @enterKeyListener()

  hideForm: =>
    @form_node.addClass('hidden')

  sameText: =>
    alert("Sheesh! The #{@tag} are alreay #{@initial_text} - try changing 'em!")

  createParam: =>
    @param = {}
    # @param[@dynamic_form_type] = {}
    # @param["#{@dynamic_form_type}"]["#{@tag}"] = @input.val()
    @param["#{@tag}"] = @input.val()
    @param = $.param(@param)