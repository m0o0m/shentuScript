function SetDefault(d)
    a = function() return d end
    b = function(d) return d end
    print("a=" ,a())
    print("b=",b(d))
end

 SetDefault(1)