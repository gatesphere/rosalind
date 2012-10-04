s := System args at(1)
t := System args at(2)

positions := list
index := 0
while(s findSeq(t, index) != nil,
  pos := s findSeq(t, index)
  index = pos + 1
  positions append(index)
)

writeln(positions join(" "))

