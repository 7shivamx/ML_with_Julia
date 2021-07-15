function detect_anagrams(subject, candidates)
    subject = lowercase(subject)
    anagrams = String[]
    
    for words in candidates
        if lowercase(words) == subject
            continue
        else
            if sort(collect(lowercase(words))) == sort(collect(subject))
                push!(anagrams, words)
            end
        end
    end
    return anagrams
end
