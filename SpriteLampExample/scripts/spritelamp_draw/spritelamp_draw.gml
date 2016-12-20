//Setting up to draw a sprite. By Finn Morgan, with help from K. Alex Mills  
    
    shader_set(SpriteLampShader);
    
    shader_set_uniform_f(u_SpriteAngle, image_angle * pi / 180.0);
    shader_set_uniform_f(u_TextureRes, textureWidth, textureHeight);
    
    var lightPosArray;
    var lightColourArray;
    
    if(numLights >= 1)
    {
        lightPosArray[0] = lightSource1.cameraSpacePosX;
        lightPosArray[1] = lightSource1.cameraSpacePosY;
        lightPosArray[2] = lightSource1.zPosition;
        lightColourArray[0] = lightSource1.colourRed;
        lightColourArray[1] = lightSource1.colourGreen;
        lightColourArray[2] = lightSource1.colourBlue;
    }
    if(numLights >= 2)
    {
        lightPosArray[3] = lightSource2.cameraSpacePosX;
        lightPosArray[4] = lightSource2.cameraSpacePosY;
        lightPosArray[5] = lightSource2.zPosition;
        lightColourArray[3] = lightSource2.colourRed;
        lightColourArray[4] = lightSource2.colourGreen;
        lightColourArray[5] = lightSource2.colourBlue;
    }
    if(numLights >= 3)
    {
        lightPosArray[6] = lightSource3.cameraSpacePosX;
        lightPosArray[7] = lightSource3.cameraSpacePosY;
        lightPosArray[8] = lightSource3.zPosition;
        lightColourArray[6] = lightSource3.colourRed;
        lightColourArray[7] = lightSource3.colourGreen;
        lightColourArray[8] = lightSource3.colourBlue;
    }
    if(numLights >= 4)
    {
        lightPosArray[9] = lightSource4.cameraSpacePosX;
        lightPosArray[10] = lightSource4.cameraSpacePosY;
        lightPosArray[11] = lightSource4.zPosition;
        lightColourArray[9] = lightSource4.colourRed;
        lightColourArray[10] = lightSource4.colourGreen;
        lightColourArray[11] = lightSource4.colourBlue;
    }
    
    shader_set_uniform_f_array(u_LightPosArray, lightPosArray);
    shader_set_uniform_f_array(u_LightColourArray, lightColourArray);
             
             
    texture_set_stage(u_NormalDepthMap, normalDepthTexture);
    texture_set_stage(u_SpecGlossMap, specGlossMap);
    texture_set_stage(u_AOMap, aoMap);
    texture_set_stage(u_EmissiveMap, emissiveMap);
    
    shader_set_uniform_f(u_CelLevel, celLevel);
    shader_set_uniform_f(u_Shininess, shininess);
    shader_set_uniform_f(u_WrapAroundLevel, wrapAroundLevel);
    shader_set_uniform_f(u_AOStrength, aoStrength);
    shader_set_uniform_f(u_EmissiveStrength, emissiveStrength);
    shader_set_uniform_f(u_AmplifyDepth, amplifyDepth);
    
    shader_set_uniform_f(u_UpperAmbientColour, 
            upperAmbient_Red, upperAmbient_Green, upperAmbient_Blue);
    shader_set_uniform_f(u_LowerAmbientColour,
            lowerAmbient_Red, lowerAmbient_Green, lowerAmbient_Blue);
            
    shader_set_uniform_f(u_numLights, numLights);
    
    // must check each frame
    spritelamp_updatelights();
            
    draw_self();
    
    shader_reset();