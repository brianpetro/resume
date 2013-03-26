app = angular.module("Resume", ["ngResource"])

app.factory "Entry", ["$resource", ($resource) ->
  $resource("/entries")
]

@EntryCtrl = ["$scope", "Entry", ($scope, Entry) ->
  $scope.entries = Entry.query()
  $scope.showThis = false

  $scope.isClass = (isProject) ->
  	if isProject == true
  		$scope.myVar = "project alert-info"
  	else
  		$scope.myVar = "tech alert-success"
]
