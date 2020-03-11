//seek(x,y ,weight)
// returns a vector for steering direction 
var target = vect2(argument[0], argument[1]); 
var weight = argument[2]; 

/*
var desired_vel = vect_scaler(
  vect_subtract(target, position),
  max_speed
); 
*/
var desired_vel = vect_subtract(target, position);

var d = vect_len(desired_vel);
show_debug_message(string(d)); 

if(d < 10){
	show_debug_message("arrived");
	var dsr = d / 10; 
	var ndv = vect_norm(desired_vel);
	desired_vel = vect_multr(ndv, max_speed * dsr); 
} 
else {
	var dd = vect_norm(desired_vel)
	desired_vel = vect_multr(dd, max_speed);
}

return(
 vect_multr(
	vect_subtract(
	  desired_vel, velocity
	), weight
 )); 




