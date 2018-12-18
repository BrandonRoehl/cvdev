
@s = "string"
@s.class.send(:define_method, :upper_vowel) do
    self.chars.map do |c|
        if 'aeiou'.chars.include? c
            c.upcase
        else
            c
        end
    end.join
end
puts @s.upper_vowel