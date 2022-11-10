def encode(plaintext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    p "Cipher is #{cipher}"
    ciphertext_chars = plaintext.chars.map do |char|
      x = (65 + cipher.find_index(char)).chr
    p x
    end
    p "Cipher text is #{ciphertext_chars.join}"
    return ciphertext_chars.join
  end
  
  def decode(ciphertext, key)
    p ciphertext
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    p "Cipher is #{cipher}"
    p "t".ord
    p "E".ord
    plaintext_chars = ciphertext.chars.map do |char|
      x = cipher[char.ord - 65]
      p x
    end
    p "Plaintext is #{plaintext_chars.join}"
    return plaintext_chars.join
  end

  #encode("z", "key")

  encode("theswiftfoxjumpedoverthelazydog", "secretkey")

  decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")

  # Intended output:
  #
  # > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
  # => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  #
  # > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  # => "theswiftfoxjumpedoverthelazydog"