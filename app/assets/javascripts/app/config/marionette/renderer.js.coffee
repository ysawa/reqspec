Backbone.Marionette.Renderer.render = (template, data) ->
  template_path = "app/apps/" + template
  renderer = JST[template_path]
  unless renderer
    throw "Template #{template_path} not found!"
  renderer(data)
