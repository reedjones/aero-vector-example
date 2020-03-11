
var targets = argument[0];
var desired_seperation = argument[1]; 
var steer = vect2(0,0);
var vs = vect2(0,0);
var count = 0; 
for(var i = 0; i < instance_number(targets); i++){
 var target = instance_find(targets, i);
 
 var d = vect_dist(position, target.position); 
 
 if(d > 0 && d < desired_seperation){
	 show_debug_message("too close");
   var dif = vect_subtract(position, target.position);
   dif = vect_norm(dif);
   vs = vect_add(dif, vs);
   count += 1; 
 }
}

if(count > 0) {
	vs = vect_divr(vs, count); 
	vs = vect_norm(vs); 
	vs = vect_multr(vs, max_speed); 
	
	steer = vect_subtract(vs, velocity); 
	steer = vect_truncate(steer, max_force); 		
	return steer; 
}
return steer; 