require './lib/vendor'

class Market < Vendor
  attr_reader :name, :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map{|vendor| vendor.name}
  end

  def vendors_that_sell(item)
    @vendors.map{|vendor| vendor if vendor.check_stock(item) > 0}.compact
  end
end
