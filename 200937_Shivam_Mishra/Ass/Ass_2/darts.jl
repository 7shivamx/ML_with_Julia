function score(x, y)
    position = sqrt(x^2 + y^2)

    if position <= 1
        return 10
    elseif 1 <= position <= 5
        return 5
    elseif 5 <= position <= 10
        return 1
    else
        return 0
    end
end
