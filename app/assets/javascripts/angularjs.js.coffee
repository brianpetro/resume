app = angular.module("Resume", ["ngResource"])

app.config ["$httpProvider", ($httpProvider) ->
  $httpProvider.defaults.headers.common["X-Requested-With"] = "XMLHttpRequest"
]

app.factory "Entry", ["$resource", ($resource) ->
  $resource("/entries", {}, {}, {})
]

app.factory "Done", ["$resource", ($resource) ->
  $resource("/dones", {}, {update: {method: "PUT"}}, {})
]

app.factory "Resource", ["$resource", ($resource) ->
  $resource("/resources", {}, {}, {})
]

app.directive "entryList", [ ->
	restrict: "E"
	templateUrl: "/entryList.html"
]

## -Filter in Coffee-
##app.filter "techFilter", ->
##	(text) ->
##		text.split("").reverse().join ""
