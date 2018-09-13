
class Goods
  attr_accessor :title, :img, :description, :price
  
  def initialize(title, src, description, price )
    @title = title
    @img = src
    @description = description 
    @price = price
  end

end

