class Phrase

  attr_accessor :word_count

  def initialize(phrase)
    @word_count = {}
    to_hash(phrase)
  end

  private

  def to_hash(phrase)
    phrase.gsub(/[^\w\s,\']/, "").split(/\s|,/).each do |word|
      next if word == ""
      word = word.downcase
      word[0] = "" if word[0] == "'"
      word[-1] = "" if word[-1] == "'"
      @word_count[word] ? @word_count[word] += 1 : @word_count[word] = 1
    end
  end

end