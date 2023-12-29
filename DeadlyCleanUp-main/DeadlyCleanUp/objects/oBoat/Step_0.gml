/// @description Insert description here
// You can write your code in this editor

if keyboard_check(vk_left) {
	direction += turnRadius;
	image_angle += turnRadius;
}
if keyboard_check(vk_right) {
	direction -= turnRadius;
	image_angle -= turnRadius;
}
if keyboard_check(vk_up) {
	speed += acceleration;
}
if keyboard_check(vk_down) {
	speed -= acceleration;
}

speed = clamp(speed, -1, 7);


x = clamp(x, sprite_width/2, room_width - sprite_width/2);
y = clamp(y, sprite_height/2, room_height - sprite_height/2);

