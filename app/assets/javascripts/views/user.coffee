namespace "PB.Views", (Views) ->
  class Views.User extends Views.Base
    initialize: ->
      super

      @model.on "change", @render
