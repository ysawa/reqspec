$ = jQuery
Product = App.Product

$.fn.product = ->
  elementID   = $(@).data('id')
  elementID or= $(@).parents('[data-id]').data('id')
  Product.find(elementID)

class Edit extends Spine.Controller
  events:
    'click [data-type=back]': 'back'
    'submit form': 'submit'

  constructor: ->
    super
    @active (params) ->
      @change(params.id)

  change: (id) ->
    @product = Product.find(id)
    @render()

  render: ->
    @html @view('products/edit')(product: @product)

  back: ->
    @navigate '/products'

  submit: (e) ->
    e.preventDefault()
    @product.fromForm(e.target).save()
    @navigate '/products'

class Index extends Spine.Controller
  events:
    'click [data-type=edit]':    'edit'
    'click [data-type=destroy]': 'destroy'
    'click [data-type=show]':    'show'
    'click [data-type=new]':     'new'

  constructor: ->
    super
    Product.bind 'refresh change', @render
    Product.fetch()

  render: =>
    products = Product.all()
    @html @view('products/index')(products: products)

  edit: (e) ->
    product = $(e.target).product()
    @navigate '/products', product.id, 'edit'

  destroy: (e) ->
    product = $(e.target).product()
    product.destroy() if confirm('Sure?')

  show: (e) ->
    product = $(e.target).product()
    @navigate '/products', product.id

  new: ->
    @navigate '/products/new'

class New extends Spine.Controller
  events:
    'click [data-type=back]': 'back'
    'submit form': 'submit'

  constructor: ->
    super
    @product = new Product(name: '', code: '')
    @active @render

  render: ->
    @html @view('products/edit')(product: @product)

  back: ->
    @navigate '/products'

  submit: (e) ->
    e.preventDefault()
    product = Product.fromForm(e.target).save()
    @navigate '/products', product.id if product

class Show extends Spine.Controller
  events:
    'click [data-type=edit]': 'edit'
    'click [data-type=back]': 'back'

  constructor: ->
    super
    @active (params) ->
      @change(params.id)

  change: (id) ->
    @product = Product.find(id)
    @render()

  render: ->
    @html @view('products/show')(product: @product)

  edit: ->
    @navigate '/products', @product.id, 'edit'

  back: ->
    @navigate '/products'

class App.Products extends Spine.Stack
  controllers:
    edit:  Edit
    index: Index
    new:   New
    show:  Show

  routes:
    '/products/:id/edit': 'edit'
    '/products':          'index'
    '/products/new':      'new'
    '/products/:id':      'show'

  default: 'index'
  className: 'stack products'
