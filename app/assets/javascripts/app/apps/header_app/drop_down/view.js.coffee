@Reqspec.module "HeaderApp.DropDown", (DropDown, App, Backbone, Marionette, $, _) ->

  class DropDown.Item extends App.Views.ItemView
    template: "header_app/drop_down/templates/_item"
    tagName: "li"

    onRender: () ->
      if @model.get('active')
        @$el.addClass('active')

  class DropDown.Header extends App.Views.CompositeView
    template: "header_app/drop_down/templates/header"
    itemView: DropDown.Item
    itemViewContainer: ".dropdown-menu"
