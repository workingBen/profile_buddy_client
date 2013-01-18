#= require models/base

namespace "PB.Models", (Models) ->
  class Models.User extends Models.Base

    initialize: =>
      this.on "change", =>
        @profiles().reset @get('profiles')

    profiles: =>
      @_profiles or= new PB.Collections.Profiles @get('profiles'),
        username: @username()
      @_profiles

    currentProfile: =>
      @profiles().first()

    username: =>
      @get('username')

    url: =>
      "#{PB.config.serverUrl}/users/#{@username()}"
