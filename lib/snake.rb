# snake player class
class Snake
  attr_accessor :x, :y
  def initialize
    @x     = 10
    @y     = 10
    @vel_x = 0
    @vel_y = 0
  end

  def update
    @x += @vel_x
    @y += @vel_y
  end

  def draw
    Gosu.draw_rect(
      x * SnakeGame::TILE,
      y * SnakeGame::TILE,
      SnakeGame::TILE - 1,
      SnakeGame::TILE - 1,
      Gosu::Color::GREEN
    )
  end

  def up
    @vel_x = 0
    @vel_y = -1
  end

  def down
    @vel_x = 0
    @vel_y = 1
  end

  def left
    @vel_x = -1
    @vel_y = 0
  end

  def right
    @vel_x = 1
    @vel_y = 0
  end
end