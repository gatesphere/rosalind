str := System args at(1)
val := Map clone

str foreach(c,
  c = c asCharacter
  if(val at(c) == nil,
    val atPut(c, 0)
  )
  val atPut(c, val at(c) + 1)
)

writeln(list(val at("A"), val at("C"), val at("G"), val at("T")) join(" "))


