namespace "PB", (PB) ->
  ### SET ENV HOOK -- do not remove ###
  PB.version = '0.1'

  environments =
    development:
      apiVersion: 'v1'
      host: "http://#{window.location.hostname}:9292"
      #mixpanel: ""
      #facebook: ""
    test:
      apiVersion: 'v1'
      host: "http://127.0.0.1:31337"
      #mixpanel: ""
    production:
      apiVersion: 'v1'
      host: "http://profile_buddy_server.herokuapp.com"
      #mixpanel: ""

  if m = /env=([^&]*)/g.exec window.location.search
    PB.env = m[1]

  PB.env ||= "production"

  PB.config = environments[PB.env]
  PB.config.serverUrl = PB.config.host + "/" + PB.config.apiVersion

  if forge? and (PB.env isnt "production")
    forge.reload.switchStream(PB.env)
