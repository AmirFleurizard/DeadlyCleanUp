if(instance_exists(oBoat)){
	if(distance_to_object(oBoat) < 500){
		move_towards_point(oBoat.x, oBoat.y, moveSpeed);	
	}
}