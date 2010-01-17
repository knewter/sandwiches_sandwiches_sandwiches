require 'test/unit'
require '../sandwich.rb'
require '../bread.rb'
require '../ham.rb'

class SandwichTest < Test::Unit::TestCase
  def setup
    @s = Sandwich.new
    @s << Bread.new
  end

  def test_calories
    # Bread has 74 calories...
    assert_equal 74, @s.calories
  end

  def test_contents
    assert_equal ["bread"], @s.contents
  end

  def test_fancier_contents
    @s << Ham.new
    @s << Ham.new
    @s << Bread.new
    assert_equal ["bread", "ham", "ham", "bread"], @s.contents
  end

  def test_fancier_calories
    # 74 + 46 + 46 + 74 = 240
    @s << Ham.new
    @s << Ham.new
    @s << Bread.new
    assert_equal 240, @s.calories
  end
end
