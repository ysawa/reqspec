Backbone.Marionette.Renderer.render = (template, data) ->
  path = JST["app/apps/" + template]
  unless path
    throw "Template #{template} not found!"
  path(data)
