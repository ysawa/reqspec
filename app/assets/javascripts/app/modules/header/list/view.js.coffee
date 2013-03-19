@Reqspec.module "Header.List", (List, App, Backbone, Marionette, $, _) ->

  class List.Item extends App.Views.ItemView
    template: "header/list/views/_item"
    tagName: "li"

  class List.Header extends App.Views.CompositeView
    template: "header/list/views/header"
    itemView: List.Item
    itemViewContainer: "ul"
