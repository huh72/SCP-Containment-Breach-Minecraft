#version 330

uniform sampler2D InSampler;
uniform sampler2D ControlSampler;
uniform sampler2D PrevSampler;
uniform vec2 OutSize;

uniform float GameTime;

in vec2 texCoord;

out vec4 fragColor;


void main() {
    // fragColor.rgb = vec3(0.5, 0.75, 0.5);
    // float Time = (GameTime * 1201) - floor(GameTime * 1201);
    vec4 curr_texel = texture(InSampler, texCoord);
    vec4 prev_texel = texture(PrevSampler, texCoord);

    fragColor.rgb = vec3(mix(CurrTexel, PrevTexel, 0.5));


    // vec3 tex_col = curr_texel.rgb;
    // vec3 prev_col = prev_texel.rgb;
    // vec3 mergeColor = 1.0f - (1.0f - prev_col * 0.5f) * (1.0f - tex_col * 0.5f);
    // vec3 stripColor = mergeColor;

	// fragColor = curr_texel;

    // // Channel #1
    // vec4 control_color = texelFetch(ControlSampler, ivec2(0, 1), 0);
    // if((control_color.g * 255.) == 253) { // Channel #1
    //     switch(int(control_color.b * 255.)) {
    //         case 1:            
    //             if (cos(texCoord.y * (512 + distance(vec2(texCoord.x, 0.5f), vec2(0.5f, 0.5f)) * 100) - Time * 30) < -0.7f) {
    //                 stripColor = mergeColor * 0.95f;
    //             }
    //             fragColor = vec4(stripColor, curr_texel.a);
    //     }
    // }
    // fragColor = vec4(curr_texel, prev_texel);

}