/// @description Insert description here
spawnX = random_range(0, room_width);
spawnY = random_range(0, room_height);
instance_create_layer(spawnX, spawnY, "instances", objectType);
alarm[0] = spawnInterval;
