namespace "PB.Views", (Views) ->
  class Views.Base extends Backbone.View

    initialize: =>
      super

      @render()

    computeTemplate: =>
      s = @constructor.name # Take the class name
      s = s[0].toLowerCase() + s[1..-1]   # with a lower-cased first letter.

      return JST[s]

    render: =>
      model = @viewmodel or (@model? and @model) or {}
      template = @template or @computeTemplate()
      @$el.html template(model)

      unless @$el.closest('html').length # append unless it's already in dom
        $('#content-container').children().removeClass('current').hide()
        $("#content-container").append @$el
        @$el.addClass('current')

      return this
