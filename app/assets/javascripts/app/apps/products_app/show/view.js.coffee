@Reqspec.module "ProductsApp.Show", (Show, App, Backbone, Marionette, $, _) ->

  class Show.Layout extends App.Views.Layout
    template: "products_app/show/templates/layout"

    regions:
      paginationRegion: "#pagination-region"
      productsRegion: "#products-region"

  class Show.Product extends App.Views.ItemView
    template: "products_app/show/templates/_product"

