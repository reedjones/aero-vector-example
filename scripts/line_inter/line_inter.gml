// calculate a line intersect
var ahead = argument[0];
var ahead2 = argument[1];
var target = argument[2]; 
var target_size = argument[3]; 

var d = vect_dist(target.position, ahead);
var d2 = vect_dist(target.position, ahead2); 

return(
   d <= target_size || d2 <= target_size 
);