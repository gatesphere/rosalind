str := System args at(1)
str2 := System args at(2)

count := 0
str foreach(i, c,
  if(str2 at(i) == c, continue)
  count = count + 1
)

writeln(count)
