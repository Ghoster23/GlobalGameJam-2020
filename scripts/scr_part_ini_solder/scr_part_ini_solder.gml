var particle1 = part_type_create();

part_type_sprite(particle1, spr_solder, false, false, true);
part_type_size(particle1, 0.7, 0.8, -0.04, 0);
part_type_scale(particle1, 1, 1);

part_type_life(particle1, 10, 20);
part_type_alpha2(particle1, 0.6, 0);

return particle1;