app = angular.module("Resume", ["ngResource"])

app.factory "Entry", ["$resource", ($resource) ->
  $resource("/entries")
]

app.factory "Done", ["$resource", ($resource) ->
  $resource("/dones", {}, {update: {method: "PUT"}})
]

app.factory "Resource", ["$resource", ($resource) ->
  $resource("/resources", {}, {})
]
