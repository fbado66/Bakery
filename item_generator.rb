

class Items
  attr_accessor :title, :img, :price
  
  def initialize(title, src, price )
    @title = title
    @img = src
    @price = price
  end

end

