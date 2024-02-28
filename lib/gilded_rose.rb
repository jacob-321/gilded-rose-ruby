class GildedRose

  class Conjured < Item
    def tick
      @days_remaining -= 1
      return if @quality == 0

      @quality -= 2
      @quality -= 2 if @days_remaining <= 0
    end
  end

  DEFAULT_CLASS = Item
  SPECIALIZED_CLASSES = {
    'normal'                                    => Normal,
    'Aged Brie'                                 => Brie,
    'Backstage passes to a TAFKAL80ETC concert' => Backstage,
    'Conjured Mana Cake'                        => Conjured }

  def self.for(name, quality, days_remaining)
    (SPECIALIZED_CLASSES[name] || DEFAULT_CLASS).
      new(quality, days_remaining)
  end

end
