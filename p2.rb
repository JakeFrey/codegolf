ns = eval(gets.chomp)
rs = eval(gets.chomp)
ol = []
for r in rs
  for n in ns
    if n.between?(r[0], r[1])
      ol.push(n)
    end
  end
end
p ol
