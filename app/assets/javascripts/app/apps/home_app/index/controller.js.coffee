@Reqspec.module "HomeApp.Index", (Index, App, Backbone, Marionette, $, _) ->

  Index.Controller =

    index: ->
      homeView = @getHomeView()
      App.mainRegion.show homeView

    getHomeView: ->
      new Index.Home
