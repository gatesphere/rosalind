str := System args at(1)

rep := Map clone atPut("A", "T") atPut("T", "A") atPut("C", "G") atPut("G", "C")

str2 := "" asMutable
str asMutable reverseInPlace foreach(c,
  c := c asCharacter
  str2 appendSeq(rep at(c))
)

writeln(str2)
