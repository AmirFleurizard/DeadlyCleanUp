moveSpeed = 2;
path_start(pUnderWaterShark,moveSpeed,path_action_continue,0);
onPath = true;

uniTime = shader_get_uniform(sh_water, "time");
uniTexel = shader_get_uniform(sh_water, "texel");
