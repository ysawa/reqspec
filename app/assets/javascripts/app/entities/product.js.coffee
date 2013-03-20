@Reqspec.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.Product extends Entities.Model

  class Entities.ProductsCollection extends Entities.Collection
    model: Entities.Product
    url: -> Routes.products_path()

  API =
    getProductEntities: (callback) ->
      products = new Entities.ProductsCollection
      products.fetch
        success: ->
          if callback
            callback products

  App.reqres.addHandler "product:entities", (callback) ->
    API.getProductEntities callback
