Array::rand = () ->
  return @[Math.floor(@length*Math.random())]

Array::each = Array::forEach

Array::first = (n) ->
  if n?
    _.first(@, n)
  else
    @[0]

Array::last = ->
  @[@length - 1]

Array::compact = ->
  _.compact(@)

Array::toSentence = ->
  if @length is 2
    @join(' and ')
  else if @length is 1
    @first()
  else
    [@[0..-2].join(', '), @last()].compact().join(", and ")
