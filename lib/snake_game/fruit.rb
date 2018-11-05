# Fruit Class to collet with snake in Game
class Fruit
  attr_accessor :x, :y

  def initialize
    @x = 15
    @y = 15
  end

  def update; end

  def draw
    Gosu.draw_rect(
      @x * SnakeGame::TILE, # posicao x
      @y * SnakeGame::TILE, # posicao y
      SnakeGame::TILE - 1, # tamanho
      SnakeGame::TILE - 1, # altura
      Gosu::Color::RED
    )
  end

  def regenerate
    @x = (rand * SnakeGame::TILE).floor
    @y = (rand * SnakeGame::TILE).floor
  end
end