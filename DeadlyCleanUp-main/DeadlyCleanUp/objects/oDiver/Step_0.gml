vSpeed = fallSpeed;	

if keyboard_check(vk_left) {
	x -= moveSpeed;
	sprite_index = sDiverSwim;
	image_xscale = 1;
}
if keyboard_check(vk_right) {
	x += moveSpeed;
	sprite_index = sDiverSwim;
	image_xscale = -1;
}
if keyboard_check(vk_up) {
	vSpeed = -moveSpeed;
	sprite_index = sDiverSwimUp;
}
if keyboard_check(vk_down) {
	vSpeed = quickFallSpeed;
	sprite_index = sDiver;
}

if(!keyboard_check(vk_up) && !keyboard_check(vk_left) && !keyboard_check(vk_right)){
	sprite_index = sDiver;
}

if(place_meeting(x,y+vSpeed,oGround)){
	if(place_meeting(x,y+sign(vSpeed),oGround)){
		vSpeed = 0;	
	} 
}	

if(place_meeting(x,y+vSpeed,oReturnToBoat)){
	room_goto(rOcean);
}

if(place_meeting(x,y,oTreasure)){
	score += 20;
	audio_play_sound(sdCollectTreasure, 0, 0);
	if(score % 200 == 0) lives++;
	instance_destroy(instance_place(x,y,oTreasure));
	if(!instance_exists(oTreasure)){
		room_goto(rOcean);	
	}
}

y += vSpeed;
x = clamp(x, sprite_width/2, room_width - sprite_width/2);