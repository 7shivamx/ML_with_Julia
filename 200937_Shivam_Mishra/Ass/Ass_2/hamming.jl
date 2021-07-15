function distance(a, b)
    if length(a) != length(b)
        throw(ArgumentError("length of a differs from b!"))
    end
    return sum(map(!=, a, b)) end
