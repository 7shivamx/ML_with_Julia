function to_rna(dna)
  transcribed = Dict('G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U')
  rna = ""

  for i in 1:length(dna)
    try
      rna = string(rna, transcribed[dna[i]])
    catch
      throw(ErrorException("Invalid input"))
    end
  end

  return rna
end
