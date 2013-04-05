#= require json2
#= require i18n
#= require i18n/translations
#= require underscore
#= require backbone
#= require backbone.babysitter
#= require backbone.wreqr
#= require backbone.marionette
#= require backbone.paginator
#= require js-routes
#= require hamlcoffee
#= require_tree ./config
#= require_self
#= require ./lib/mongo_model
#= require_tree ./lib
#= require_tree ./entities
#= require_tree ./apps
#= require_directory .

@Reqspec = do (Backbone, Marionette) ->

  App = new Marionette.Application

  App.rootRoute = Routes.root_path()

  App.on "initialize:before", (options) ->
    @currentUser = App.request "set:current:user", gon.current_user

  App.reqres.addHandler "get:current:user", ->
    App.currentUser

  App.addRegions
    headerRegion: "#header-region"
    mainRegion: "#main-region"
    footerRegion: "#footer-region"

  App.addInitializer ->
    App.module("HeaderApp").start()
    App.module("FooterApp").start()

  App.on "initialize:after", (options) ->
    if Backbone.history
      Backbone.history.start()
      @navigate(@rootRoute, trigger: true) if @getCurrentRoute() is ""

  App
