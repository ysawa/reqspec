@Reqspec.module "ProductsApp.Index", (Index, App, Backbone, Marionette, $, _) ->

  Index.Controller =

    index: ->
      App.request "product:entities", (products) =>

        @layout = @getLayoutView()

        @layout.on "show", =>
          @showPanel products
          @showProducts products

        App.mainRegion.show @layout

    showPanel: (products) ->
      panelView = @getPanelView products
      @layout.panelRegion.show panelView

    showProducts: (products) ->
      productsView = @getProductsView products
      @layout.productsRegion.show productsView

    getProductsView: (products) ->
      new Index.Products
        collection: products

    getPanelView: (products) ->
      new Index.Panel
        collection: products

    getLayoutView: ->
      new Index.Layout
