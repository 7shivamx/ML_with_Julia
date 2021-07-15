"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
return isempty(setdiff('a':'z',lowercase(input)))
end
