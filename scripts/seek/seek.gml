//seek(x,y ,weight)
// returns a vector for steering direction 
var target = vect2(argument[0], argument[1]); 
var weight = argument[2]; 

var desired_vel = vect_scaler(
  vect_subtract(target, position),
  max_speed
); 

return(
 vect_multr(
	vect_subtract(
	  desired_vel, velocity
	), weight
 )); 