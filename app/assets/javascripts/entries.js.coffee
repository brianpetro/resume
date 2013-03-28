@EntryCtrl = ["$scope", "Entry", ($scope, Entry) ->
  $scope.entries = Entry.query()
  $scope.showThis = false

  $scope.isClass = (tech) ->
  	if tech == true
  		$scope.myVar = "tech"
  	else
  		$scope.myVar = "project alert-success"
]
