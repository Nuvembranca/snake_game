# Fruit Class to collet with snake in Game
class Fruit
  attr :posix, :posiy

  def initialize
    @posix = 5
    @posiy = 5
  end

  def update; end

  def draw
    Gosu.draw_rect(
      @posx * SnakeGame::TILE, # posicao x
      @posy * SnakeGame::TILE, # posicao y
      SnakeGame::TILE - 1, # tamanho
      SnakeGame::TILE - 1, # altura
      Gosu::Color::RED
    )
  end
end