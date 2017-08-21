require 'spec_helper'

describe 'GameWindow.new' do
  let(:game_window) {GameWindow.new}
  let(:gravity) {GameWindow::GRAVITY}
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
  it 'should have a constant DAMPING value set' do
    expect(damping).to eql 0.9
  end
end



