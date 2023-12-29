numTreasure = random_range(3, 5);
numSharks = random_range(1,3);
for(i = 0; i < numTreasure; i++){
	spawnX = random_range(0, room_width);
	spawnY = random_range(oReturnToBoat.y+64, oGround.y-32);
	instance_create_depth(spawnX,spawnY,-1,objectType);
}

for(i = 0; i < numSharks; i++){
	spawnX = random_range(64, room_width-64);
	spawnY = random_range(oReturnToBoat.y+64, oGround.y-64);
	instance_create_depth(spawnX,spawnY,-1,oUnderWaterShark);
}