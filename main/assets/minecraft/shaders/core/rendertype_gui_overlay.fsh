/*
 Generated from https://non0reo.github.io/ImgToShader/
*/

#version 150

in vec4 vertexColor;

uniform vec4 ColorModulator;
uniform mat4 ProjMat;

out vec4 fragColor;

void main() {
    vec4 color = vertexColor;
    if (color.a == 0.0) discard;

    fragColor = color * ColorModulator;
    
    if (color.r == 239.0 / 255.0) {
        fragColor = vec4(vec3(76, 205, 234) / 255, color.a);
    }

}