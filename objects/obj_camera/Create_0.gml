camera = camera_create();

var vm = matrix_build_lookat(phy_position_x,phy_position_y,-100,phy_position_x,phy_position_y,100,0,1,0);
var pm = matrix_build_projection_ortho(1920,1080,1,100000)

camera_set_view_mat(camera,vm)
camera_set_proj_mat(camera,pm)

view_camera[0] = camera;

follow_object = noone

zoom = 1080 // This is the target zoom
temp_zoom = zoom