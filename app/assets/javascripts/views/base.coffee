namespace "PB.Views", (Views) ->
  class Views.Base extends Backbone.View
    computeTemplate: =>
      s = @constructor.name # Take the class name
      s = s[0].toLowerCase() + s[1..-1]   # with a lower-cased first letter.

      return JST[s]

    render: =>
      model = @viewmodel or (@model? and @model.attributes) or {}
      template = @template or @computeTemplate()
      @$el.html template(model)

      unless @$el.closest('html').length # append unless it's already in dom
        $("body").append @$el

      return this
