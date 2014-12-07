Fruit = ($resource) ->
  url = '/fruits/:id.json'
  paramsDefaults = id: '@id'
  actions =
    update:
      method: 'PATCH'

  $resource(url, paramsDefaults, actions)


app = angular.module 'SortableTableSandbox'
app.factory 'Fruit', [
  '$resource'
  Fruit
]
