class Caesar
  attr_reader :offset

  LOW_RU_ALPHABET = Array('а'..'я')
  UP_RU_ALPHABET = Array('А'..'Я')
  LOW_EN_ALPHABET = Array('a'..'z')
  UP_EN_ALPHABET = Array('A'..'Z')

  def initialize(offset = 8)
    @offset = offset
    @encryptor = create_encryption_table(offset)
    @decryptor = create_encryption_table(-offset)
  end

  def offset=(offset)
    @offset = offset
    @encryptor = create_encryption_table(offset)
    @decryptor = create_encryption_table(-offset)
  end

  def encode(text)
    text.chars.map { |c| @encryptor.fetch(c, c) }.join
  end

  def decode(text)
    text.chars.map { |c| @decryptor.fetch(c, c) }.join
  end

  private

  def create_encryption_table(offset)
    [
      Hash[LOW_RU_ALPHABET.zip(LOW_RU_ALPHABET.rotate(offset))],
      Hash[UP_RU_ALPHABET.zip(UP_RU_ALPHABET.rotate(offset))],
      Hash[LOW_EN_ALPHABET.zip(LOW_EN_ALPHABET.rotate(offset))],
      Hash[UP_EN_ALPHABET.zip(UP_EN_ALPHABET.rotate(offset))]
    ].inject(&:merge)
  end
end