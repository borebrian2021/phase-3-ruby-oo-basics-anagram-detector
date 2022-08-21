class Anagram
    attr_reader :word

    def initialize(word)
        @word = word
    end

    def match(array)
        sorted = array.map do |word|
            if word.chars.sort == @word.chars.sort
                word
            else nil
            end
        end
        finded = sorted.filter do |word|
            word != nil
        end
        finded
    end
end

listen = Anagram.new("allergy")
print listen.match(%w[gallery ballerina regally clergy largely leading])
