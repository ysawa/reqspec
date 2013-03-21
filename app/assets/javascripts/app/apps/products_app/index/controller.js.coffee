@Reqspec.module "ProductsApp.Index", (Index, App, Backbone, Marionette, $, _) ->

  Index.Controller =

    index: (page = 1) ->
      App.request "product:entities", { page: page }, (products) =>

        @layout = @getLayoutView()

        @layout.on "show", =>
          @showPagination products
          @showProducts products

        App.mainRegion.show @layout

    showPagination: (products) ->
      paginationView = @getPaginationView products
      @layout.paginationRegion.show paginationView

    showProducts: (products) ->
      productsView = @getProductsView products
      @layout.productsRegion.show productsView

    getProductsView: (products) ->
      new Index.Products
        collection: products

    getPaginationView: (products) ->
      new Index.Pagination
        collection: products

    getLayoutView: ->
      new Index.Layout
