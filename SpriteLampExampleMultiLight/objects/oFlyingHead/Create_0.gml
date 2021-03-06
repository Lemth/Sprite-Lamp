//This script goes on the 'create' event of objects that need Sprite Lamp's
//lighting effects.
//The uniform variable stuff shouldn't really change, but down the bottom are
//the bits where you set your desired values for stuff.

spritelamp_sethooks();


/********************************************************************************/
//Set your different maps here! Note that your diffuse map isn't done this way - 
//diffuse comes from whatever image is assigned to the object in the usual fashion.
normalDepthTexture = sprite_get_texture(sExampleHeadNormal, 0);
specGlossMap = sprite_get_texture(sExampleHeadNormal, 0);
aoMap = sprite_get_texture(sExampleHeadDiffuse, 0);
emissiveMap = sprite_get_texture(sStoneWallDiffuse, 0);
//(note - this example doesn't have an emissive map so I'm using the diffuse map as
//a dummy and turning the emissive strength variable to zero. Eventually I'll have
//a couple of versions of the shader, so if you're not using certain features you
//done have to screw around with this kind of thing)


//Set shader variables here. Note that they get sent every frame,
//so feel free to change these values in script during play.
celLevel = 0.0;
shininess = 30.0;
wrapAroundLevel = 0.0;
aoStrength = 0.3;
emissiveStrength = 0.0;
amplifyDepth = 0.5;

//Set texture resolution - needed for self-shadows. Presumably there is some way
//to automate this process - if you know how, tell me!
textureWidth = 512;
textureHeight = 256;


//Ambient colour components.
upperAmbient_Red = 0.1;
upperAmbient_Green = 0.1;
upperAmbient_Blue = 0.1;

lowerAmbient_Red = 0.03;
lowerAmbient_Green = 0.03;
lowerAmbient_Blue = 0.03;

numLights = 4;

//The nearest lightsource.
spritelamp_updatelights();


/* */
/*  */
