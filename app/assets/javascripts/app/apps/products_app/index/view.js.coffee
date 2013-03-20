@Reqspec.module "ProductsApp.Index", (Index, App, Backbone, Marionette, $, _) ->

  class Index.Layout extends App.Views.Layout
    template: "products_app/index/templates/layout"

    regions:
      panelRegion: "#panel-region"
      productsRegion: "#products-region"

  class Index.Panel extends App.Views.ItemView
    template: "products_app/index/templates/_panel"

  class Index.Product extends App.Views.ItemView
    template: "products_app/index/templates/_product"
    tagName: "tr"

  class Index.Empty extends App.Views.ItemView
    template: "products_app/index/templates/_empty"
    tagName: "tr"

  class Index.Products extends App.Views.CompositeView
    template: "products_app/index/templates/_products"
    itemView: Index.Product
    emptyView: Index.Empty
    itemViewContainer: "tbody"
