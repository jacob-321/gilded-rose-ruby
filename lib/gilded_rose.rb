class GildedRose

  DEFAULT_CLASS = Item
  SPECIALIZED_CLASSES = {
    'normal'                                    => Normal,
    'Aged Brie'                                 => Brie,
    'Backstage passes to a TAFKAL80ETC concert' => Backstage }

  class Item
    def tick
    end
  end

  def self.for(name, quality, days_remaining)
    klass_for(name).
      new(quality, days_remaining)
  end

  def self.klass_for(name)
    case name
    when 'normal'
      Normal
    when 'Aged Brie'
      Brie
    when 'Sulfuras, Hand of Ragnaros'
      Item
    when 'Backstage passes to a TAFKAL80ETC concert'
      Backstage
    end
  end

end
