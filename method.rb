#!/usr/bin/env ruby

class Meta
    # symbol, array, block
    def method_missing(name, *args, &block)
        return name
    end
end

