# This class just acts like an array, but it has
# a special method that tells you how many calories
# sandwich is, and another special method that
# prints out the contents of the sandwich.
class Sandwich < Array
  def calories
    inject(0){|sum, item| sum += item.calories }
  end

  def contents
    map{|i| i.to_s }
  end
end
