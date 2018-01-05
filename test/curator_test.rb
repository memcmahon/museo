require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/curator'

class CuratorTest < Minitest::Test
  def test_it_start_with_no_knowledge
    curator = Curator.new

    assert_equal [], curator.artists
    assert_equal [], curator.photographs
    assert_equal [], curator.museums
  end

  def test_it_can_learn_about_museums
    curator = Curator.new

    curator.add_museum({id: 1, name: "Moma"})

    assert_instance_of Museum, curator.museums[0]
    assert_equal 1, curator.museums.count
    assert_equal 1, curator.museums.first.id
  end

  def test_it_can_learn_about_artists
    curator = Curator.new

    curator.add_artist({id: 1, name: "Ansel Adams", born: 1902, died: 1984, country: "United States"})

    assert_instance_of Artist, curator.artists[0]
    assert_equal 1, curator.artists.count
    assert_equal 1, curator.artists.first.id
  end

  def test_it_can_learn_about_photographs
    curator = Curator.new

    curator.add_photograph({id: 1, name: "Moonrise, Hernandez", artist_id: 1, museum_id: 1, year: 1941})

    assert_instance_of Photograph, curator.photographs[0]
    assert_equal 1, curator.photographs.count
    assert_equal 1, curator.photographs.first.id

  end
end
