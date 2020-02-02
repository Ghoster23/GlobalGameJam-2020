var particle1 = part_type_create();

part_type_sprite(particle1, spr_electricity, false, false, true);
part_type_size(particle1, 0.02, 0.8, -0.05, 0.01);
part_type_scale(particle1, 1, 1);
part_type_speed(particle1, 0.40, 1, -0.01, 0);
part_type_direction(particle1, 0, 359, 0.001, 20);
part_type_orientation(particle1, 0, 359, 0, 0, 1);
part_type_life(particle1, 5, 15);
part_type_blend(particle1, true);

return particle1;