remaining_steps = 10;
step_timer = 1
damage = 1;
victim = noone;
target_dir = -phy_rotation
max_turn = 15
targeting_arc = 90;
range = 400
spread = 30
color = c_blue
chance_new_branch = 10 //percentage
new_branch_angle = 30
lightning_sprite = spr_lightning_1
var i = irandom(2)
switch (i){
		case 0: lightning_sprite = spr_lightning_1 break;
		case 1: lightning_sprite = spr_lightning_2 break;
		case 2: lightning_sprite = spr_lightning_3 break;
	}