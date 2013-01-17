namespace "PB.Views", (Views) ->
  class Views.Profile extends Views.Base
    initialize: ->
      super

      @model.on "change", @render
