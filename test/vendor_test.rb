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
    assert_equal 0, vendor.check_stock(item1)
  end

  def test_stock
    vendor = Vendor.new("Rocky Mountain Fresh")
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    item2 = Item.new({name: 'Tomato', price: '$0.50'})
    vendor.stock(item1, 30)
    #require 'pry'; binding.pry
    assert_equal ({item1 => 30}), vendor.inventory
    assert_equal 30, vendor.check_stock(item1)

    vendor.stock(item1, 25)
    assert_equal 55, vendor.check_stock(item1)
require 'pry'; binding.pry
    vendor.stock(item2, 12)
    assert_equal ({item1 => 55, item2 => 12}), vendor.inventory
  end
end
