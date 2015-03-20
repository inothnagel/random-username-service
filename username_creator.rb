class UsernameCreator
  def self.username
    i = 2
    username = ""
    i.times { username += name }
    username
  end

  def self.name
    i = rand(1..3)
    name = ""
    i.times { name += syllable }
    name.capitalize
  end

  def self.syllable
    return "#{onset}#{nucleus}"
  end

  def self.onset
    consonant
  end

  def self.nucleus
    if rand(0..1) == 1 
      %w(a e i o u).sample
    else
      %w(ae ai ao au ei eo eu io iu ou).sample
    end
  end

  def self.coda
    consonant
  end

  def self.consonant
    %w(b c d f g h j k l m n p q r s t v w z).sample
  end

  def self.password
    size = 16
    chars = (('a'..'z').to_a + ('0'..'9').to_a) - %w(i o 0 1 l 0)
    (1..size).collect{|a| chars[rand(chars.size)] }.join
  end
end
