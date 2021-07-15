function encode(s)
    length(s) > 0 && any(isdigit, s) && throw(ErrorException("Invalid input (contains numbers)"))
    length(s) <= 1 && return(s)
    i = 1
    while i < length(s) && s[i+1] == s[1]
        i += 1
    end
    n = (i > 1 ? "$i" : "")
    n * s[1] * encode(SubString(s, i+1))
end


function decode(s)
    length(s) > 0 && isdigit(s[end]) && throw(ErrorException("Invalid input (ends in a number)"))
    length(s) <= 1 && return(s)
    i = 1
    while i < length(s) && isdigit(s[i])
        i += 1
    end
    n = (i > 1 ? parse(Int, SubString(s, 1, i-1)) : 1)
    s[i]^n * decode(SubString(s, i+1))
end
