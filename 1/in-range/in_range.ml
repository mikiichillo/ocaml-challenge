let in_range (x:'a) (a:'a) (b: 'a) : bool =
if(a<b) then if (x<b&&x>a) then true
else false
else if (x<a&&x>b) then true
else false