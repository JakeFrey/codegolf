l=input()
c=2+l[0][1]
for n in range(max([3+b[1]+b[2]for b in l]),0,-1):
	o=''
	for z in l:
		h=3+z[1]+z[2]
		if n>h:
			o+=' '*(3+z[0]+z[1])
		elif n>2+z[2]:
			if n>c:
				o+=' '*(z[1]+1-(h-n))
			else:
				o+='_'*(n-2-z[2])
		if n==3+z[1]+z[2]or n==2+z[2]or n==1:
			o+='+'+'-'*z[0]+'+'
		elif n<3+z[1]+z[2]and n>2+z[2]:
			o+='/'+' '*z[0]+'/'
		elif n<2+z[2]and n>1:
			o+='|'+' '*z[0]+'|'
		if n<h and n>z[1]+2:
			o+=' '*min((h-1-n),z[2],z[1])+'|'
		elif n==z[1]+2:
			o+=' '*min([z[1],z[2],z[1]])+'+'
		elif n<z[1]+2 and n>1:
			o+=' '*min((n-2),z[2],z[1])+'/'
		if n<=c:
			o+='_'*(c-n+1)
		else:
			o+=' '
	print o
