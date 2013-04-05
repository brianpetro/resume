@ResourceCtrl = ["$scope", "Resource", ($scope, Resource) ->
  $scope.resources = Resource.query()

  $scope.addResource = ->
  	resource = Resource.save $scope.newResource, ->
			$scope.resources = Resource.query()
		$scope.newResource = {}
]
