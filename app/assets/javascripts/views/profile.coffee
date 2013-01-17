namespace "PB.Views", (Views) ->
  class Views.Profile extends Views.Base
    initialize: ->
      @model.on "change", @render
