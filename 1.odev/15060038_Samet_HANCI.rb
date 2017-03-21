class Karsilastirma
  attr_reader :aractipi, :bulunduğuil, :fiyat

  def initialize(aractipi, bulunduğuil, fiyat)
    @aractipi, @bulunduğuil, @fiyat = aractipi, bulunduğuil, fiyat
  end

  def >(other)
    @fiyat > other.fiyat
  end

  def <(other)
    @fiyat < other.fiyat
  end

  def ==(other)
    @fiyat == other.fiyat 
  end

  def to_s
    "(#{@fiyat},#{@fiyat})"
  end

  def zam
    @fiyat * 1.1
  end

  def indirim
    @fiyat * 0.9
  end
end
n1 = Karsilastirma.new("taksi","Samsun",20000)
n2 = Karsilastirma.new("kamyon","Kirsehir",80000)
if !(n1 == n2)
  puts("İki aracın fiyatları eşit değil.")
end
if n2 > n1
  puts("İki aracın fiyatlarından Samsun'daki Taksi fiyatı diğerine göre daha pahalı değil.")
end
if n1 < n2 
  puts("İki aracın fiyatlarından Samsun'daki Taksi fiyatı diğerine göre daha ucuz.")
end
puts "Samsun'daki Taksi'nin indirimli fiyatı #{n1.indirim.to_i}"
puts "Samsun'daki Taksi'nin zamlı fiyatı #{n1.zam.to_i}"
gets