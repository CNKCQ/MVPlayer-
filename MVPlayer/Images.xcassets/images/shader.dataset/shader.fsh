//
//  Fragment Shader
//  Tudou
//
//  Created by rock on 15/05/05.
//  Copyright (c) 2014年 Youku.com inc. All rights reserved.
//


varying highp vec2 v_texCoord;
precision mediump float;

uniform sampler2D SamplerY;
uniform sampler2D SamplerUV;
uniform sampler2D SamplerV;
uniform mat3 colorConversionMatrix;

void main()
{
    highp vec3 yuv;
    highp vec3 rgb;
    yuv.x = (texture2D(SamplerY, v_texCoord).r - 0.0627);
    yuv.yz = (texture2D(SamplerUV, v_texCoord).ra - vec2(0.5, 0.5));
    
    rgb = mat3(1.1643,    1.1643,          1.1643,
               0.0000,    -0.2148,         2.1280,
               1.2802,    -0.3806,         0.0000)*yuv;
    gl_FragColor = vec4(rgb,1);
    
}
