function bob(stimulus)
    is_upper = stimulus == uppercase(stimulus) != lowercase(stimulus)
    if strip(stimulus) == ""
        "Fine. Be that way!"
    elseif strip(stimulus)[end] == '?'
        if is_upper
            "Calm down, I know what I'm doing!"
        else
            "Sure."
        end
    elseif is_upper
        "Whoa, chill out!"
    else
        "Whatever."
    end
end
