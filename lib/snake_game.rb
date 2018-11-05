require 'gosu'
require 'lib/snake_game/snake'
require 'lib/snake_game/fruit'
# main class to the snake game
class SnakeGame < Gosu::Window

  WIDTH = HEIGHT = 600.freeze
  TILE  = 10.freeze
  WIDTH_IN_TILE = WIDTH/TILE

  def initialize
    super(WIDTH, HEIGHT, false, 1000/15)
    @snake = Snake.new
    @fruit = Fruit.new
  end

  def update
    if @snake.x == @fruit.x && @snake.y == @fruit.y
      @snake.increase
      @fruit.regenerate
    end

    @fruit.update
    @snake.update

    @snake.pos[0..-2].each do |x, y|
      @snake.reset if x == @snake.x && y == @snake.y
    end
  end

  def draw
    @fruit.draw
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
