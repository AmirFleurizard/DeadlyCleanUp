if(instance_exists(oDiver)){
	if(distance_to_object(oDiver) < 300){
		path_end();
		onPath = false;
		move_towards_point(oDiver.x, oDiver.y, moveSpeed);	
	} else if(!onPath){
		onPath = true;
		path_start(pUnderWaterShark,moveSpeed,path_action_continue,0);	
	}
}