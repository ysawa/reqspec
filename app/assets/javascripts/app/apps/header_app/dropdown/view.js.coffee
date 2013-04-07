@Reqspec.module "HeaderApp.Dropdown", (Dropdown, App, Backbone, Marionette, $, _) ->

  class Dropdown.Layout extends App.Views.Layout
    template: "header_app/dropdown/templates/layout"
    regions:
      toggleRegion: '#header-dropdown-toggle'
      menuRegion: '#header-dropdown-menu'

  class Dropdown.Toggle extends App.Views.ItemView
    template: "header_app/dropdown/templates/_toggle"

  class Dropdown.Item extends App.Views.ItemView
    template: "header_app/dropdown/templates/_item"
    tagName: "li"

  class Dropdown.Menu extends App.Views.CompositeView
    template: "header_app/dropdown/templates/_menu"
    itemView: Dropdown.Item
    itemViewContainer: ".dropdown-menu"
