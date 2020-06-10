class Vendor
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item)
    if @inventory == {}
      @inventory.count
    else
     @inventory[item]
   end
  end

  def stock(item, amount)
    @inventory[item] += amount
  end
end
