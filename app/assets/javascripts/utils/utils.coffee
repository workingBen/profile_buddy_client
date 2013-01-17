namespace "PB", (PB) ->
  PB.redirectTo = (hash) ->
    window.location.hash = hash

  PB.inspect = (obj, indentLevel=0) ->
    return "(indent level too deep)\n" if indentLevel > 3
    out = ""
    for key, val of obj
      out += "---" for i in [0...indentLevel]
      if val instanceof Object
        out += "#{key}:\n"
        out += PB.inspect val, indentLevel + 1
      else
        out += "#{key}: #{val}\n" # FIXME: [].toString() is ""
    out

  PB.errorCb = (response, message=undefined) ->
    message or= "oops, something went wrong."
    PB.log.error response
    PB.log.error message if message
    err = new Error "message: #{message}\n#{PB.inspect(response)}"

  PB.makeErrorCb = (message) ->
    (response) -> PB.errorCb response, message
