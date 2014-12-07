Fruit = ($resource) ->
  url = '/fruits/:id.json'
  paramsDefaults = id: '@id'
  actions =
    sort:
      url: '/fruits/:id/sort.json'
      method: 'PATCH'

  $resource(url, paramsDefaults, actions)


app = angular.module 'SortableTableSandbox'
app.factory 'Fruit', [
  '$resource'
  Fruit
]
