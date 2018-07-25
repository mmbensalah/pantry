require 'pry'
class Pantry
  attr_reader :stock, :shopping_list

  def initialize
    @stock = {}
    @shopping_list = {}
  end

  def stock_check(food)
    if @stock.include?(food)
      @stock[food]
    else
      0
    end
  end

  def restock(food, number)
    @stock[food] = number
  end

  def add_to_shopping_list(recipe)
    @shopping_list = recipe.ingredients
  end
  #got stuck on Iteration 2 - couldn't figure out how to update hash vs replace it.
  #Tried .inject to no success 
end
