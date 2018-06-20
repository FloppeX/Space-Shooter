

// Clear particles

part_particles_clear(global.part_system_above)
part_particles_clear(global.part_system_below)

// Zoom

zoom_timer += 0.2
if zoom_timer > 360
	zoom_timer = 1

global.zoom = 800 + 200 * sin(degtorad(zoom_timer)) 