function binarysearch(arr, val; rev::Bool = false, by::Function = x -> x, lt = <)
    last = length(arr)
    first = 1
    
    val = by(val)

    while first <= last
        mid = rev ? Int(ceil((first+last)/2)) : Int(floor((first+last)/2))

        compare = by(arr[mid])

        if compare == val
            return mid:mid
        elseif rev ? compare > val : lt(compare,val)
            first = mid + 1
        else
            last = mid - 1
        end
    end

    return first:last
end
