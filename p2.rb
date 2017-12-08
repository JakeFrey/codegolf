a = eval(gets.chomp)
b = eval(gets.chomp)
c = []
for r in b
  for n in a
    if n.between?(r[0], r[1])
      c.push(n)
    end
  end
end
p c
