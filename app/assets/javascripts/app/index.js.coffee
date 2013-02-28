#= require json2
#= require jquery
#= require ./spine
#= require spine/manager
#= require ./spine_mongo
#= require spine/route

#= require_tree ./lib
#= require_self
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views

class App extends Spine.Controller
  constructor: ->
    super

    # Initialize controllers
    @append(@products = new App.Products)

    Spine.Route.setup()

window.App = App
