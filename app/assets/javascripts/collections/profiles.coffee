#= require models/profile

namespace "PB.Collections", (Collections) ->
  class Collections.Profiles extends Backbone.Collection

    model: PB.Models.Profile
    modelName: 'profile'

    url: PB.config.serverUrl + "/profiles/@username"
