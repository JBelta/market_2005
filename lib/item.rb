class Item
  attr_reader :info

  def initialize(info)
    @name = info[:name]
    @price = info[:price]
  end
end
