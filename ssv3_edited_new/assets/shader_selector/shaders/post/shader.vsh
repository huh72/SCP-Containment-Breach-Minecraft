#version 330
in vec4 Position;

uniform vec2 InSize;
uniform vec2 OutSize;
uniform vec2 ScreenSize;

uniform sampler2D ControlSampler;

out vec2 texCoord;

float time() {
    vec3 control_time = texelFetch(ControlSampler, ivec2(0, 0), 0).rgb;
    return control_time.x + 255. * control_time.y + 65025. * control_time.z;
}

void main(){

}