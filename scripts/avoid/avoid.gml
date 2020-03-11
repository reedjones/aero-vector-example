// avoid avoids collision 
var target = argument[0]; 
var max_see_ahead = argument[1]; 

var dynamic_length = vect_len(velocity) / max_speed;

if (dynamic_length == 0){
	show_debug_message("dynamic length at 0");
}
/*
var nmm = vect_multr(
		    vect_norm(velocity), max_see_ahead); 
		*/
		// OR 
		
var nmm = vect_multr(
			vect_norm(velocity), dynamic_length); 
		

var ahead = vect_add(position, nmm); 


var nmm2 = vect_multr(
		    vect_norm(velocity), max_see_ahead * 0.5);
			
			
var ahead2 = vect_add(position, nmm2); 

//var avoidance_force = vect_subtract(ahead, target.position); 
var avoidance_force = vect2(0,0); 
avoidance_force[1] = ahead[1] - target.position[1]; 
avoidance_force[2] = ahead[2] - target.position[2]; 


avoidance_force = vect_multr(vect_norm(avoidance_force), 2.4); //1.4


return (avoidance_force);