/********************************************************************************/
//By Finn Morgan, with assistance from K. Alex Mills

//A whole bunch of shader variables - the 'u_' prefix means 'uniform variable'.
//These are just hooks to communicate with the shader.

//Maps. Note that we don't have to do the diffuse map - that's included as the
//base texture (gm_BaseTexture) automatically.
u_NormalDepthMap = shader_get_sampler_index(SpriteLampShader, "sl_NormalDepthMap");
u_SpecGlossMap = shader_get_sampler_index(SpriteLampShader, "sl_SpecGlossMap");
u_AOMap = shader_get_sampler_index(SpriteLampShader, "sl_AOMap");
u_EmissiveMap = shader_get_sampler_index(SpriteLampShader, "sl_EmissiveMap");

//Sprite Lamp variables that are handled by scripts
u_SpriteAngle = shader_get_uniform(SpriteLampShader, "sl_SpriteAngle");
u_TextureRes = shader_get_uniform(SpriteLampShader, "sl_TextureRes");

u_LightPosArray = shader_get_uniform(SpriteLampShader, "sl_LightPosArray");
u_LightColourArray = shader_get_uniform(SpriteLampShader, "sl_LightColourArray");
u_numLights = shader_get_uniform(SpriteLampShader, "sl_numLights");

//Sprite Lamp variables that are set by the user
u_CelLevel = shader_get_uniform(SpriteLampShader, "sl_CelLevel");
u_Shininess = shader_get_uniform(SpriteLampShader, "sl_Shininess");
u_WrapAroundLevel = shader_get_uniform(SpriteLampShader, "sl_WrapAroundLevel");
u_AOStrength = shader_get_uniform(SpriteLampShader, "sl_AOStrength");
u_EmissiveStrength = shader_get_uniform(SpriteLampShader, "sl_EmissiveStrength");
u_AmplifyDepth = shader_get_uniform(SpriteLampShader, "sl_AmplifyDepth");

u_UpperAmbientColour = shader_get_uniform(SpriteLampShader, "sl_UpperAmbientColour");
u_LowerAmbientColour = shader_get_uniform(SpriteLampShader, "sl_LowerAmbientColour");

/********************************************************************************/