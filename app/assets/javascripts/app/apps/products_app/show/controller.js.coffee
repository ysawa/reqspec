@Reqspec.module "ProductsApp.Show", (Show, App, Backbone, Marionette, $, _) ->

  Show.Controller =

    show: (id) ->
      App.request "product:entities:find", { id: id }, (product) =>

        @layout = @getLayoutView()

        App.mainRegion.show @layout

    getLayoutView: ->
      new Show.Layout
