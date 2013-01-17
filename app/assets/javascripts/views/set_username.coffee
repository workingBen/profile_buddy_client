#= require views/base

namespace "PB.Views", (Views) ->
  class Views.SetUsername extends Views.Base
    events:
      'click .done': 'done'

    done: ->
      # show loading spinner

      # post username to server (it will scrape and return the profile)
      username = $('.username').val()
      $.ajax "#{PB.config.serverUrl}/profiles/scrape/#{username}",
        type: "POST"
        success: (data) ->
          PB.currentProfile = new PB.Models.Profile data

          PB.redirectTo "profiles/#{PB.currentProfile.id}"

        error: PB.makeErrorCb "Error creating profile for #{username}"
