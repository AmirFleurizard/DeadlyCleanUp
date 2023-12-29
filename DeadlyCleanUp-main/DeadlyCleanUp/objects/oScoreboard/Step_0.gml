if(keyboard_check_pressed(ord("S"))){
	instance_create_layer(room_width/2,room_height/2,"Instances",oShark);	
}
if(keyboard_check_pressed(ord("F"))){
	instance_create_layer(room_width/2,room_height/2,"Instances",oSwordFish);	
}
if(keyboard_check_pressed(ord("L"))){
	lives++;	
}
if(keyboard_check_pressed(ord("K"))){
	lives--;	
}
if(keyboard_check_pressed(ord("T"))){
	instance_create_layer(room_width/2,room_height/2,"Instances",oTrash);	
}
if(keyboard_check_pressed(ord("R")) && lives == 0){
	game_restart();	
}
if(keyboard_check_pressed(ord("A"))){
	score += 20;
}
if(lives == 0){
	if(instance_exists(oBoat)) instance_destroy(oBoat);
	if(instance_exists(oDiver)) instance_destroy(oDiver);
}
