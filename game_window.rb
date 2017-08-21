require 'gosu'
require 'chipmunk'

class GameWindow < Gosu::Window
  GRAVITY = 400.0
  GRAVITY_DIRECTION = 0.0
  DAMPING = 0.9
  attr_reader :space
  def initialize
    super 1280, 720
    self.caption = "Ryuu"
    @space = CP::Space.new
    @background = Gosu::Image.new('assets/img/bg.png')
    @space.damping = DAMPING
    @space.gravity = CP::Vec2.new(GRAVITY_DIRECTION, GRAVITY)
    @game_over = false
  end

  def update
    unless @game_over
      10.times do
        @space.step(1.0/600)
      end
    end
  end

  def draw
    # ...
  end
end

window = GameWindow.new
window.show