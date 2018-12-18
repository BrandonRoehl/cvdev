#!/usr/bin/env ruby

class Req
    def initialize(url)
        @url = url
    end

    [:get, :post, :put].each do |t|
        define_method(t) do |*args|
            @type = t
            req args
        end
    end
    
    private

    def req(args)
        puts "#{@type.upcase}: #{@url} - #{args}"
    end
end

@req = Req.new 'https://google.com'
@req.post 'random'