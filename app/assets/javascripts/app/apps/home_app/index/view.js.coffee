@Reqspec.module "HomeApp.Index", (Index, App, Backbone, Marionette, $, _) ->

  class Index.Home extends App.Views.ItemView
    template: "home_app/index/templates/index"
