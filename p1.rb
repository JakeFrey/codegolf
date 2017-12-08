a=eval(gets.chomp.tr('(','[').tr(')',']'))
b=2+a[0][1]
for c in a.map{|z|3+z[1]+z[2]}.max.downto(1)
  for d in a
    e=3+d[1]+d[2]
    if c>e
      print ' '*(3+d[0]+d[1])
    elsif c>b&&c>2+d[2]
      print ' '*(d[1]+1-(e-c))
    elsif c<=b&&c>2+ d[2]
      print '_'*(c-2-d[2])
    end
    if c==3+d[1]+d[2]
      print '+'+'-'*d[0]+'+'
    elsif c<3+d[1]+d[2]&&c>2+d[2]
      print '/'+' '*d[0]+'/'
    elsif c==2+d[2]
      print '+'+'-'*d[0]+'+'
    elsif c<2+d[2]&&c>1
      print '|'+' '*d[0]+'|'
    elsif c==1
      print '+'+'-'*d[0]+'+'
    end
    if c<e&&c>d[1]+2
      print ' '*[(e-1-c),d[2],d[1]].min+'|'
    elsif c==d[1]+2
      print ' '*[d[1],d[2],d[1]].min+'+'
    elsif c<d[1]+2&&c>1
      print ' '*[(c-2),d[2],d[1]].min+'/'
    end
    if c<=b
      print '_'*(b-c+1)
    else
      print ' '
    end
  end
  puts
end
