require 'gosu'
require 'lib/snake'
require 'lib/fruit'
# main class to the snake game
class SnakeGame < Gosu::Window

  WIDTH = HEIGHT = 600.freeze
  TILE  = 10
  WIDTH_IN_TILES = WIDTH/TILE

  def initialize
    super(WIDTH, HEIGHT, false, 1000/15)
    @snake = Snake.new
    @fruit = Fruit.new
  end

  def update
    @snake.update
  end

  def draw
    @snake.draw
  end

  def button_down(id)
    case id
    when Gosu::KbUp  then @snake.up
    when Gosu::KbDown  then @snake.down
    when Gosu::KbLeft  then @snake.left
    when Gosu::KbRight  then @snake.right
    end
  end
end
