'use strict'

angular.module('{{sanitized}}App', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute'
])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'static/views/main.html'
        controller: 'MainCtrl'
      .otherwise
        redirectTo: '/'


# collapse the menu on click
$(->
  navMain = $("#main-menu")

  navMain.on(
    "click",
    "a",
    null,
    () -> navMain.collapse('hide')
  )
)
