@ResourceCtrl = ["$scope", "Resource", ($scope, Resource) ->
  $scope.resources = Resource.query()
]
