@Reqspec.module "ProductsApp", (ProductsApp, App, Backbone, Marionette, $, _) ->

  class ProductsApp.Router extends Marionette.AppRouter
    appRoutes:
      "products"  : "index"
      "products/page/:page"  : "index"

  API =
    index: (page = 1) ->
      ProductsApp.Index.Controller.index(page)

  App.addInitializer ->
    new ProductsApp.Router
      controller: API
