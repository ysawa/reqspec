@Reqspec.module "ProductsApp", (ProductsApp, App, Backbone, Marionette, $, _) ->

  class ProductsApp.Router extends Marionette.AppRouter
    appRoutes:
      "products": "index"
      "products/page/:page": "index"
      "products/:id": "show"

  API =
    index: (page = 1) ->
      ProductsApp.Index.Controller.index(parseInt(page))

    show: (id) ->
      ProductsApp.Show.Controller.show(id)

  App.addInitializer ->
    new ProductsApp.Router
      controller: API
