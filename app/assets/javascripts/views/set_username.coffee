#= require views/base

namespace "PB.Views", (Views) ->
  class Views.SetUsername extends Views.Base
    events:
      'click .done': 'done'

    done: ->
      # show loading spinner

      # post username to server (it will scrape and return the profile)
      username = $('.username').val()
      $.ajax "#{PB.config.serverUrl}/users/scrape/#{username}",
        type: "POST"
        success: (data) ->
          PB.currentUser = new PB.Models.User data

          PB.redirectTo "users/#{PB.currentUser.username()}"

        error: PB.makeErrorCb "Error creating User or Profile for #{username}"
