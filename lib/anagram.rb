class Anagram
  attr_accessor :anagram

  def initialize (anagram)
    @anagram = anagram
  end

  def match (possibilities)
    sorted_anagram = anagram.split("").sort!
    possibilities.select! { |possibility| possibility.split("").sort == sorted_anagram}
  end
end
