//
//  Vertex Shader
//  Tudou
//
//  Created by rock on 15/05/05.
//  Copyright (c) 2014年 Youku.com inc. All rights reserved.
//


attribute vec4 a_position;
attribute vec2 a_textureCoord;

uniform mat4 u_modelViewProjectionMatrix;

varying highp vec2 v_texCoord;

void main()
{
    v_texCoord = vec2(a_textureCoord.x, 1.0 - a_textureCoord.y);
    gl_Position = u_modelViewProjectionMatrix * a_position;
}
