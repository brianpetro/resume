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

## -Filter in Coffee-
##app.filter "techFilter", ->
##	(text) ->
##		text.split("").reverse().join ""
