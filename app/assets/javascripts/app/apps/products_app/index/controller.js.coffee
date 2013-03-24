@Reqspec.module "ProductsApp.Index", (Index, App, Backbone, Marionette, $, _) ->

  Index.Controller =

    index: (page = 1) ->
      App.request "product:entities", { page: page }, (products) =>

        @layout = @getLayoutView()

        @layout.on "show", =>
          @showPagination products, page
          @showProducts products, page

        App.mainRegion.show @layout

    showPagination: (products, page) ->
      paginationView = @getPaginationView products, page
      @layout.paginationRegion.show paginationView

    showProducts: (products, page) ->
      productsView = @getProductsView products, page
      @layout.productsRegion.show productsView

    getProductsView: (products, page) ->
      new Index.Products
        collection: products

    getPaginationView: (products, page) ->
      new Index.Pagination
        collection: products

    getLayoutView: ->
      new Index.Layout
