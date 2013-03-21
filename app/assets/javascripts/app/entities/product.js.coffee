@Reqspec.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.Product extends Entities.Model

  class Entities.ProductsPager extends Entities.Pager
    model: Entities.Product
    url: -> Routes.products_path()

  API =
    getProductEntities: (options = {}, callback = null) ->
      products = new Entities.ProductsPager
      if options.page
        products.paginator_ui.currentPage = options.page
      products.fetch
        success: ->
          if callback
            callback products

  App.reqres.addHandler "product:entities", (options = {}, callback = null) ->
    API.getProductEntities options, callback
