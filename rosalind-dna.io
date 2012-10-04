doFile("b.io")
str := System args at(1)

val := str countNucleotides

writeln(list(val at("A"), val at("C"), val at("G"), val at("T")) join(" "))


