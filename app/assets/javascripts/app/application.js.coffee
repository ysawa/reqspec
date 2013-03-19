#= require hamlcoffee
#= require_tree ./config
#= require_self
#= require_tree ./lib
#= require_tree ./modules
#= require_directory .

@Reqspec = do (Backbone, Marionette) ->

  app = new Marionette.Application

  app.rootRoute = Routes.root_path()

  app.addRegions
    headerRegion: "#header-region"
    mainRegion: "#main-region"
    footerRegion: "#footer-region"

  app.addInitializer ->
    app.module("Header").start()
    app.module("Footer").start()

  app
