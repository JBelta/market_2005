class Vendor
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item)
    if @inventory.any?(item) == false
      0
    elsif
        @invenctory.values_at(item)
    end
  end
end
