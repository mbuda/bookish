@bookish = angular.module('bookish', [])

@bookish.config([$routeProvider', ($routeProvider) ->
  $routeProvider.
    .otherwise({
      templateUrl: '../templates/home.html.slim',
      controller: 'HomeCtrl'
    })
])
