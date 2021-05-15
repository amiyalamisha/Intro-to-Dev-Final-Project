if(global.animation_cloud == true){
	x = global.collisionx_cloud;
	y = global.collisiony_cloud;
	if(global.animation_cloud_timer > 3){
		sprite_index = spr_cloud_animation_1;
		global.animation_cloud_timer--;
	}
	else if(global.animation_cloud_timer > 0){
		sprite_index = spr_cloud_animation_2;
		global.animation_cloud_timer--;
	}
	else if(global.animation_cloud_timer == 0){
		sprite_index = spr_void;
		global.animation_cloud = false;
		global.animation_cloud_timer = 6;
	}
}