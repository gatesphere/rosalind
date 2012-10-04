doFile("b.io")
s := System args at(1)
t := System args at(2)

writeln(s locations(t) join(" "))
