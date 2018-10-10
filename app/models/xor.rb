class XOR
  attr_accessor :key

  def initialize(key)
    @key = key.codepoints
  end

  def encrypt(text)
    text.codepoints.map.with_index do |c, i|
      (c ^ @key[i % @key.size]).chr
    end.join
  end
end