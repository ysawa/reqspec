products_array = @products.to_a
object false
node(:page) { @products.current_page }
node(:count) { products_array.size }
node(:total) { @products.total_count }
node(:per_page) { @products.limit_value }
node(:total_pages) { @products.total_pages }
node(:products) do
  object :products => @products
end
