class FruitsCtrl

  constructor: (@$scope, @Fruit) ->
    @fruits = @Fruit.query()

  sortableOptions:
    stop: (e, ui) ->
      fruit = ui.item.scope().fruit
      fruit.row_order_position = ui.item.index()
      fruit.$sort()


app = angular.module 'SortableTableSandbox'
app.controller 'FruitsCtrl', [
  '$scope'
  'Fruit'
  FruitsCtrl
]
