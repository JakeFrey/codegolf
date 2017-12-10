l=input()
c=2+l[0][1]
x=' '
for n in range(max([3+b[1]+b[2]for b in l]),0,-1):
	o=''
	for z in l:
		v=z[0]
		f=z[1]
		p=z[2]
		q=min([f,p])
		h=3+f+p
		s=2+p
		t=2+f
		if n>h:
			o+=x*(3+v+f)
		elif n>s:
			o+=x*(n-s) if n>c else '_'*(n-s)
		if n==h or n==s or n==1:
			o+='+'+'-'*v+'+'
		elif n<h and n>s:
			o+='/'+x*v+'/'
		elif n<s and n>1:
			o+='|'+x*v+'|'
		if n<h and n>t:
			o+=x*min((h-1-n),q)+'|'
		elif n==t:
			o+=x*q+'+'
		elif n<t and n>1:
			o+=x*min((n-2),q)+'/'
		o+='_'*(c-n+1)if n<=c else x
	print o
