def a(a, b)
	c = []
	for r in b
		for n in a
			if n>=r[0]&&n<=r[1]
				c.push(n)
			end
		end
	end
	p c
end
