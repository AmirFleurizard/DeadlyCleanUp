image_speed = 0;
image_index = irandom(7);

uniTime = shader_get_uniform(sh_water, "time");
uniTexel = shader_get_uniform(sh_water, "texel");