require './lib/item'

class Vendor < Item
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

  def potential_revenue
    total = 0
    @inventory.each do |item, amount|
      total += item.price * amount
    end
    total
  end
end
