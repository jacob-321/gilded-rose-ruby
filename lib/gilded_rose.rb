class GildedRose
  attr_reader :item

  def self.for(name, quality, days_remaining)
    klass_for(name).new(quality, days_remaining)
  end

  def self.klass_for(name)
    case name
    when 'normal'
      Normal
    when 'Aged Brie'
      Brie
    when 'Sulfuras, Hand of Ragnaros'
      Sulfuras
    when 'Backstage passes to a TAFKAL80ETC concert'
      Backstage
    end
  end

  def tick
    item.tick
  end

  def quality
    item.quality
  end

  def days_remaining
    item.days_remaining
  end

  class Normal
  class Brie
  class Sulfuras
  class Backstage
end
