class XOR
  def initialize(key)
    @key = key.codepoints
  end

  def encrypt(text)
    text.codepoints.map.with_index do |c, i|
      (c ^ @key[i % @key.size]).ord
    end.join
  end
end