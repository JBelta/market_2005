require './lib/item'
require 'minitest/pride'
require 'minitest/autorun'

class ItemTest < Minitest::Test
  def test_it_exists
  item1 = Item.new({name: 'Peach', price: "$0.75"})
  assert_instance_of Item, item1
  end
end
#=> #<Item:0x007f9c56740d48...>

 #item2 = Item.new({name: 'Tomato', price: '$0.50'})
#=> #<Item:0x007f9c565c0ce8...>

 #item2.name
#=> "Tomato"

 #item2.price
#=> 0.50
