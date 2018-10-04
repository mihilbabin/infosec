class XOR
  def initialize(key)
    @key = key.codepoints
  end

  def encrypt(text)
    text.codepoints.map.with_index { |c, i| (c ^ @key[i % @key.size]).ord }.join
  end
end