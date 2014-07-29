bookish = angular.module('bookish', ['ngResource', 'ngRoute'])

bookish.config ($routeProvider, $locationProvider) ->
  $locationProvider.html5Mode true
  $routeProvider.when '/book', templateUrl: '/templates/mainBook.html.slim', controller: 'BookCtrl'
  $routeProvider.when '/', templateUrl: '/templates/home.html.slim', controller: 'HomeCtrl'
