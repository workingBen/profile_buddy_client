namespace "PB.Models", (Models) ->
  class Models.Base extends Backbone.Model
    url: =>
      if @id?
        "#{PB.config.serverUrl}/#{@constructor.name.toLowerCase()}s/#{@id}"
      else
        "#{PB.config.serverUrl}/#{@constructor.name.toLowerCase()}s"

    constructor: ->
      super

      for name in (@.constructor._memoizeMethods or [])
        @[name] = _.memoize @[name]

    # Class method to memoize methods
    @_memoizeMethods = []
    @memoize = (name) ->
      @_memoizeMethods = @_memoizeMethods.concat name
