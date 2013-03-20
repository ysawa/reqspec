@Reqspec.module "ProductsApp", (ProductsApp, App, Backbone, Marionette, $, _) ->

  class ProductsApp.Router extends Marionette.AppRouter
    appRoutes:
      "products"  : "index"

  API =
    index: ->
      ProductsApp.Index.Controller.index()

  App.addInitializer ->
    new ProductsApp.Router
      controller: API
