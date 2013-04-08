app = angular.module("Resume", ["ngResource"])

app.factory "Entry", ["$resource", ($resource) ->
  $resource("/entries.json", {}, {}, {})
]

app.factory "Done", ["$resource", ($resource) ->
  $resource("/dones.json", {}, {update: {method: "PUT"}}, {})
]

app.factory "Resource", ["$resource", ($resource) ->
  $resource("/resources.json", {}, {}, {})
]


app.factory "appLoading", ["$resource", ($rootScope) ->
  timer = undefined
  loading: ->
    clearTimeout timer
    $rootScope.status = "loading"
    $rootScope.$apply()  unless $rootScope.$$phase

  ready: (delay) ->
    ready = ->
      $rootScope.status = "ready"
      $rootScope.$apply()  unless $rootScope.$$phase
    clearTimeout timer
    delay = (if not delay? then 500 else false)
    if delay
      timer = setTimeout(ready, delay)
    else
      ready()
]

## -Filter in Coffee-
##app.filter "techFilter", ->
##	(text) ->
##		text.split("").reverse().join ""
