require 'spec_helper'

describe 'GameWindow.new' do
  let(:game_window) {GameWindow.new}
  let(:gravity) {GameWindow::GRAVITY}
  let(:gravity_direction) {GameWindow::GRAVITY_DIRECTION}
  let(:damping) {GameWindow::DAMPING}

  it 'has a default GameWindow width' do
    expect(game_window.width).to eql 1280
  end
  it 'has a default GameWindow height' do
    expect(game_window.height).to eql 720
  end
  it 'should have a GamWindow caption' do
    expect(game_window.caption).to eql 'Ryuu'
  end
  it 'should have a constant GRAVITY value set' do
    expect(gravity).to eql 400.0
  end
  it 'should have a constant GRAVITY_DIRECTION value set' do
    expect(gravity_direction).to eql 0.0
  end
  it 'should have a constant DAMPING value set' do
    expect(damping).to eql 0.9
  end
  it 'should have a game over trigger' do
    expect(game_window.instance_variable_get(:@game_over)).to eql false
  end
  it 'should have a space damping value that matches the constant DAMPING' do
    expect(game_window.space.damping).to eql damping
  end
  it 'should have a space gravity value that matches the constant GRAVITY' do
    expect(game_window.space.gravity.y).to eql gravity
  end
  it 'should have a space gravity direction value' do
    expect(game_window.space.gravity.x).to eql gravity_direction
  end
end



