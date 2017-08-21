require 'gosu'
require 'chipmunk'

class GameWindow < Gosu::Window
  GRAVITY = 400.0
  DAMPING = 0.9
  attr_reader :space
  def initialize
    super 1280, 720
    self.caption = "Ryuu"
    @space = CP::Space.new
    @background = Gosu::Image.new('assets/img/bg.png')
  end

  def update
    # ...
  end

  def draw
    # ...
  end
end

window = GameWindow.new
window.show