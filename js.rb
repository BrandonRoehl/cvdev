class JSObject
    def initialize
        @data = Hash.new
    end

    def [](key)
        @data[key]
    end

    def []=(key, value)
        @data[key] = value
    end

    def method_missing(name, *args, &block)
        if block_given?
            self[name] = block
        elsif name =~ /^(.*)=$/
            self[$1] = args[0]
        elsif self[name].is_a? Proc
            self[name].call(*args)
        else
            self[name]
        end
    end
end

@obj = JSObject.new

@obj.sqr do |arg|
    arg * arg
end

