"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
	a = Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)
	if strand == "" 
		return a
	else
		for i in strand
			if haskey(a, i)
				a[i] += 1
			else
				throw(DomainError(i))
			end end
	end
	return a
	end
