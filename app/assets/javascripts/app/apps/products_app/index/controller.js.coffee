@Reqspec.module "ProductsApp.List", (List, App, Backbone, Marionette, $, _) ->

  List.Controller =

    listProducts: ->
      App.request "user:entities", (users) =>

        @layout = @getLayoutView()

        @layout.on "show", =>
          @showPanel users
          @showProducts users

        App.mainRegion.show @layout

    showPanel: (users) ->
      panelView = @getPanelView users
      @layout.panelRegion.show panelView

    showProducts: (users) ->
      usersView = @getProductsView users
      @layout.usersRegion.show usersView

    getProductsView: (users) ->
      new List.Products
        collection: users

    getPanelView: (users) ->
      new List.Panel
        collection: users

    getLayoutView: ->
      new List.Layout
