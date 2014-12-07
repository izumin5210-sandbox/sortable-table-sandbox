class FruitsCtrl

  constructor: (@$scope, @Fruit) ->
    @fruits = @Fruit.query()


app = angular.module 'SortableTableSandbox'
app.controller 'FruitsCtrl', [
  '$scope'
  'Fruit'
  FruitsCtrl
]
