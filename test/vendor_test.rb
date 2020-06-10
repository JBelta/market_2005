require './lib/vendor'
require './lib/item'
require 'minitest/pride'
require 'minitest/autorun'

class VendorTest < Minitest::Test
  def test_it_exists
    vendor = Vendor.new("Rocky Mountain Fresh")
    assert_instance_of Vendor, vendor
  end

  def test_it_has_attributes
    vendor = Vendor.new("Rocky Mountain Fresh")
    assert_equal "Rocky Mountain Fresh", vendor.name
    assert_equal ({}), vendor.inventory
  end

  def test_check_stock
    vendor = Vendor.new("Rocky Mountain Fresh")
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    #require 'pry'; binding.pry
    assert_equal 0, vendor.check_stock(item1)
  end
end

# vendor.check_stock(item1)
#=> 0

# vendor.stock(item1, 30)

# vendor.inventory
#=> {#<Item:0x007f9c56740d48...> => 30}

# vendor.check_stock(item1)
#=> 30

# vendor.stock(item1, 25)

# vendor.check_stock(item1)
#=> 55

# vendor.stock(item2, 12)

# vendor.inventory
#=> {#<Item:0x007f9c56740d48...> => 55, #<Item:0x007f9c565c0ce8...> => 12}
