function rotate(r::Int, input_string)
    alphabet = collect('a':'z')
    return_string = ""
    for element ∈ input_string
        if lowercase(element) ∈ alphabet
            index = findfirst(x -> x == lowercase(element), alphabet)
            rotated_index = mod1((index + r), length(alphabet))
            return_string *= isuppercase(element) ? uppercase(alphabet[rotated_index]) : alphabet[rotated_index]
        else
            return_string *= element
        end
    end
    if typeof(input_string) == Char
        return_string = only(return_string)
    end
    return_string
end
