#version 330

uniform sampler2D MainSampler;
uniform sampler2D DataSampler;
uniform sampler2D BlurSampler;
// uniform sampler2D InSampler;
// uniform sampler2D PrevSampler;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 InSize;
};

#moj_import <minecraft:globals.glsl>

#moj_import <shader_selector:marker_settings.glsl>
#moj_import <shader_selector:utils.glsl>
#moj_import <shader_selector:data_reader.glsl>

in vec2 texCoord;

out vec4 fragColor;

void main() {

    // screen rotation
    float rotationAmount = readChannel(ROTATION_CHANNEL);
    float angle = radians(rotationAmount * 360.0);
    
    vec2 uv = (texCoord - 0.5) * OutSize;
    uv *= mat2(cos(angle), -sin(angle), sin(angle), cos(angle));
    uv = uv / OutSize + 0.5;




    // screen shake
    float shake = readChannel(SHAKE_CHANNEL);
    float randValue = fract(sin(dot(vec2(-shake, shake), vec2(12.9898, 78.233))) * 43758.5453);

    randValue = randValue / 120.0;
    vec2 shakenUV = uv - randValue;




    // screen rotation
    if (uv.x < 0.0 || uv.x > 1.0 || uv.y < 0.0 || uv.y > 1.0) {
        // beyond screen frame
        fragColor = texture(BlurSampler, (shakenUV - 0.5) * sqrt(0.5) + 0.5);
    } else {
        // inside screen
        fragColor = texture(MainSampler, shakenUV);
    }



    // blur effect
    float blurEffectStrenght = readChannel(BLUR_CHANNEL);
    vec4 BlurTexel = texture(BlurSampler, shakenUV);

    fragColor.rgb = mix(fragColor.rgb, BlurTexel.rgb, blurEffectStrenght);





    // gray screen
    vec3 greyscale = vec3(dot(fragColor.rgb, vec3(0.2126, 0.7152, 0.0722)));
    float greyscaleAmount = readChannel(GRAY_CHANNEL);
    fragColor.rgb = mix(fragColor.rgb, greyscale, greyscaleAmount);



    // green screen
    vec3 greenscale = vec3(0.0, dot(fragColor.rgb, vec3(0.3, 1.0, 0.3)), 0.0);
    float greenscaleAmount = readChannel(GREEN_CHANNEL);
    fragColor.rgb = mix(fragColor.rgb, greenscale, greenscaleAmount);




    // blue screen
    vec3 bluescale = vec3(0.0, 0.0, dot(fragColor.rgb, vec3(0.1, 0.85, 0.1)));
    float bluescaleAmount = readChannel(BLUE_CHANNEL);
    fragColor.rgb = mix(fragColor.rgb, bluescale, bluescaleAmount);




    //goggles
    float gogglesOverlayStrngth = readChannel(GOGGLES_CHANNEL);

    // grid
    float gridSpacing = 5.0;
    float lineWidth   = 2.0;
    float lineSoftness = 0.1;
    float gridOpacity = 0.35;
    vec3 gridColor    = vec3(0.0);

    vec2 gridCoord = texCoord * OutSize / gridSpacing;
    vec2 distFromLine = abs(fract(gridCoord - 0.5) - 0.5) * gridSpacing;

    // mask
    float lineX = 1.0 - smoothstep(lineWidth * 0.5, lineWidth * 0.5 + lineSoftness, distFromLine.x);
    float lineY = 1.0 - smoothstep(lineWidth * 0.5, lineWidth * 0.5 + lineSoftness, distFromLine.y);
    float gridAlpha = max(lineX, lineY) * gridOpacity;

    fragColor.rgb = mix(fragColor.rgb, gridColor, gridAlpha * gogglesOverlayStrngth);

    // black vignette
    float dist = length(texCoord - 0.5) * 1.25; // radius
    float vignette = 1.0 - smoothstep(0.45, 0.9, dist);
    float vignetteStrength = mix(1.0, vignette, gogglesOverlayStrngth);
    fragColor.rgb = fragColor.rgb * vignetteStrength;







// #define DEBUG
#ifdef DEBUG
    // Show data sampler on screen
    if (texCoord.x < .25 && texCoord.y < .25) {
        uv = texCoord * 4.0;
        vec4 col = texture(DataSampler, uv);
        if (uv.x > 1./5.)
            col = vec4(vec3(fract(decodeColor(col))), 1.0);
        fragColor = col;
    }
#endif
}