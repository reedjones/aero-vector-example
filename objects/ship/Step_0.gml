/// @description Insert description here
// You can write your code in this editor
steering = vect2(0, 0); 

//calculate desired steering vector 
// for now is steering toward mouse 

var mvect = vect2(mouse_x, mouse_y); 

steering = vect_add(
   steering, seek_arrive(mouse_x, mouse_y, 0.8));
   
// avoid "obstacle" instances

var avoid_target = instance_nearest(x, y, obstacle); 

var all_targets = obstacle; 



show_debug_message(string(avoid_target));

var avoid_f = avoid(avoid_target, 180);

var seperation_force = seperate(all_targets, 100);

steering = vect_add(
		steering, seperation_force); 

steering = vect_add(
	steering, avoid_f); 
   
steering = vect_truncate(
   steering, max_force); // limit

// 
velocity = vect_truncate(
    vect_add(velocity, steering), max_speed); // limit
	





position = vect_add(position, velocity); 




x = position[1]; 
y = position[2];

// adjust image angle 

image_angle = vect_direction(velocity);

steering = vect_multr(steering, 0);