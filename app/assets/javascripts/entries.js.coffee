app = angular.module("Resume", ["ngResource"])

app.factory "Entry", ["$resource", ($resource) ->
  $resource("/entries")
]

app.factory "Commits", ["$resource", ($resource) ->
  $resource("https://api.github.com/repos/:owner/:repo/commits", {owner: "brianpetro", repo: "resume"}, {})
]

@EntryCtrl = ["$scope", "Entry", "Commits", ($scope, Entry, Commits) ->
  $scope.entries = Entry.query()
  $scope.showThis = false
  $scope.commits = Commits.query()

  $scope.isClass = (isProject) ->
  	if isProject == true
  		$scope.myVar = "project alert-info"
  	else
  		$scope.myVar = "tech alert-success"
]
