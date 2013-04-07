@Reqspec.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.Product extends Entities.Model
    urlRoot: Routes.products_path
    url: ->
      if _.isFunction @urlRoot
        base = @urlRoot()
      else
        base = @urlRoot
      if @id
        base + '/' + @id
      else
        base

  class Entities.ProductsPager extends Entities.Pager
    model: Entities.Product
    url: -> Routes.products_path()
    parse: (response) ->
      results = response.products
      results

  API =
    getProductEntities: (options = {}, callback = null) ->
      products = new Entities.ProductsPager
      if options.page
        products.paginator_ui.currentPage = options.page
      products.fetch
        success: ->
          if callback
            callback products
    getProductEntity: (options = {}, callback = null) ->
      product = new Entities.Product(_id: options['id'])
      product.fetch
        success: ->
          if callback
            callback product

  App.reqres.addHandler "product:entities", (options = {}, callback = null) ->
    API.getProductEntities options, callback

  App.reqres.addHandler "product:entities:find", (options = {}, callback = null) ->
    API.getProductEntity options, callback
