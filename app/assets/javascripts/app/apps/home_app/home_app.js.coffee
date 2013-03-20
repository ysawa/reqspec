@Reqspec.module "HomeApp", (HomeApp, App, Backbone, Marionette, $, _) ->
  @startWithParent = false

  class HomeApp.Router extends Marionette.AppRouter
    appRoutes:
      ""  : "index"

  API =
    index: ->
      HomeApp.Index.Controller.index()

  App.addInitializer ->
    new HomeApp.Router
      controller: API
