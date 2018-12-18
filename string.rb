#!/usr/bin/env ruby

class String
    define_method :upper_vowel do
        self.chars.map do |c|
            if 'aeiou'.chars.include? c
                c.upcase
            else
                c
            end
        end.join
    end
end
