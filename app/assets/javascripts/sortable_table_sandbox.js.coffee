app = angular.module 'SortableTableSandbox', ['ngResource']
app.config ['$httpProvider', ($httpProvider) ->
  csrfToken = angular.element(document.querySelectorAll('meta[name=csrf-token]')).attr('content')
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = csrfToken
]
