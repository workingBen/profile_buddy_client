#= require models/base

namespace "PB.Models", (Models) ->
  class Models.User extends Models.Base

    profiles: =>
      @_profiles or= new PB.Collections.Profiles @get('profiles'),
        username: @username()
      @_profiles

    currentProfile: =>
      @profiles().first()

    username: =>
      @get('username')
