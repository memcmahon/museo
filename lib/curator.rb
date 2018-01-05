require './lib/museum'
require './lib/artist'

class Curator
  attr_reader :artists,
              :museums,
              :photographs

  def initialize
    @artists     = []
    @photographs = []
    @museums     = []
  end

  def add_museum(info)
    @museums << Museum.new(info)
  end

  def add_photograph(info)
    @photographs << Photograph.new(info)
  end

  def add_artist(info)
    @artists << Artist.new(info)
  end

end
