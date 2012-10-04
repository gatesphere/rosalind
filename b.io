// b.io
// small, simple bioinformatics library
// Jacob Peck
// BSD License

// info
bio_const_info := Object clone do(
  complements := list(list("A", "T"), list("C", "G"), 
                      list("G", "C"), list("T", "A")) asMap
)

// additions to Sequence (for ease of use)
Sequence countNucleotides := method(
  counts := Map clone
  self foreach(c,
    c = c asCharacter
    if(counts at(c) == nil, counts atPut(c, 0))
    counts atPut(c, counts at(c) + 1)
  )
  counts
)

Sequence transcribeToRNA := method(
  self asMutable replaceSeq("T", "U")
)

Sequence transcribeToDNA := method(
  self asMutable replaceSeq("U", "T")
)

Sequence complement := method(
  str := "" asMutable
  self foreach(c,
    c = c asCharacter
    str appendSeq(bio_const_info complements at(c))
  )
  str
)

