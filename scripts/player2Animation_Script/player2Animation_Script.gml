//If not trying to grabsomething
if (!grabbing) {
	//If not touching anything(in Air)
	if (!(place_meeting(x,y+global.grav,wall) || place_meeting(x,y+global.grav,crate) || place_meeting(x,y+global.grav,button) || place_meeting(x,y+global.grav,door) || place_meeting(x,y+global.grav,platform))) {
		sprite_index = player2SpriteInAir;
	}

	//If on ground
	else {
		if (h_speed == 0) {
			image_speed = 0;
			sprite_index = player2Sprite;		
		}
		if (h_speed != 0) {
			image_speed = 1;
			sprite_index = player2SpriteWalk;
		}
	}
}
