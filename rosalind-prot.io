str := System args at(1)

amino := list(
  list("UUU", "F"),
  list("UUC", "F"),
  list("UUA", "L"),
  list("UUG", "L"),
  list("UCU", "S"),
  list("UCC", "S"),
  list("UCA", "S"),
  list("UCG", "S"),
  list("UAU", "Y"),
  list("UAC", "Y"),
  list("UAA", "Stop"),
  list("UAG", "Stop"),
  list("UGU", "C"),
  list("UGC", "C"),
  list("UGA", "Stop"),
  list("UGG", "W"),
  list("CUU", "L"),
  list("CUC", "L"),
  list("CUA", "L"),
  list("CUG", "L"),
  list("CCU", "P"),
  list("CCC", "P"),
  list("CCA", "P"),
  list("CCG", "P"),
  list("CAU", "H"),
  list("CAC", "H"),
  list("CAA", "Q"),
  list("CAG", "Q"),
  list("CGU", "R"),
  list("CGC", "R"),
  list("CGA", "R"),
  list("CGG", "R"),
  list("AUU", "I"),
  list("AUC", "I"),
  list("AUA", "I"),
  list("AUG", "M"),
  list("ACU", "T"),
  list("ACC", "T"),
  list("ACA", "T"),
  list("ACG", "T"),
  list("AAU", "N"),
  list("AAC", "N"),
  list("AAA", "K"),
  list("AAG", "K"),
  list("AGU", "S"),
  list("AGC", "S"),
  list("AGA", "R"),
  list("AGG", "R"),
  list("GUU", "V"),
  list("GUC", "V"),
  list("GUA", "V"),
  list("GUG", "V"),
  list("GCU", "A"),
  list("GCC", "A"),
  list("GCA", "A"),
  list("GCG", "A"),
  list("GAU", "D"),
  list("GAC", "D"),
  list("GAA", "E"),
  list("GAG", "E"),
  list("GGU", "G"),
  list("GGC", "G"),
  list("GGA", "G"),
  list("GGG", "G")
) asMap

triplets := method(in,
  out := list
  gather := "" asMutable
  index := 0
  in foreach(c,
    c = c asCharacter
    gather appendSeq(c)
    index = index + 1
    if(index == 3,
      out append(gather)
      gather = "" asMutable
      index = 0
    )
  )
  out
)

out := "" asMutable
str = triplets(str)
str foreach(trip,
  if(amino at(trip) != "Stop",
    out appendSeq(amino at(trip))
  )
)
writeln(out)
