let in_range : 'a -> 'a -> 'a -> bool =
if(a<b) then if (x<b&&x>a) then true
else false
else if (x<a&&x>b) then true
else false