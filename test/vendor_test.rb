require './lib/vendor'
require 'minitest/pride'
require 'minitest/autorun'

class VendorTest < Minitest::Test
  def test_it_exists
    vendor = Vendor.new("Rocky Mountain Fresh")
    assert_instance_of Vendor, vendor
  end
end
#=> #<Vendor:0x00007f85683152f0...>

# vendor.name
#=> "Rocky Mountain Fresh"

# vendor.inventory
#=> {}

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
