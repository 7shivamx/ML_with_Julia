function triangle(n)
    if n < 0 
        throw(DomainError(n, "invalid N"))
    end

    if n == 0
        return []
    end

    rows = [[1]]

    for i in 1:n-1
        row = vcat(0, rows[i], 0)
        next = [ v[1] + v[2] for v in zip(row[1:end-1], row[2:end]) ]

        push!(rows,next)
    end

    return rows
end
