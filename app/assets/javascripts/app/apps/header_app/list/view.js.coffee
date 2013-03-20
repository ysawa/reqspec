@Reqspec.module "HeaderApp.List", (List, App, Backbone, Marionette, $, _) ->

  class List.Item extends App.Views.ItemView
    template: "header_app/list/views/_item"
    tagName: "li"

    onRender: () ->
      if @model.get('active')
        @$el.addClass('active')

  class List.Header extends App.Views.CompositeView
    template: "header_app/list/views/header"
    itemView: List.Item
    itemViewContainer: "ul"
