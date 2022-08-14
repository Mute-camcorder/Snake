require 'gosu'

class Banner
  def initialize(heading, subheading='')
    @heading = heading
    @subheading = subheading
    @heading_font = Gosu::Font.new(20)
    @subheading_font = Gosu::Font.new(12)
  end

  def draw
    x = Config::Window::WIDTH / 2
    y = Config::Window::HEIGHT / 2

    @heading_font.draw_text_rel(
      @heading, 
      x,
      y,
      1,
      0.5,
      0.5,
    )
    
    y += @heading_font.height * 2

    @subheading_font.draw_text_rel(
      @subheading, 
      x,
      y,
      1,
      0.5,
      0.5,
    )

  end
end