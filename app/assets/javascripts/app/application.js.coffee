#= require hamlcoffee
#= require_tree ./config
#= require_self
#= require_tree ./lib
#= require_tree ./entities
#= require_tree ./apps
#= require_directory .

@Reqspec = do (Backbone, Marionette) ->

  App = new Marionette.Application

  App.rootRoute = Routes.root_path()

  App.addRegions
    headerRegion: "#header-region"
    mainRegion: "#main-region"
    footerRegion: "#footer-region"

  App.addInitializer ->
    App.module("HeaderApp").start()
    App.module("FooterApp").start()

  App
